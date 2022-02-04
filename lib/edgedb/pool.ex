defmodule EdgeDB.Pool do
  # NOTE: consider this module as experimental.

  # wrapper around DBConnection.ConnectionPool to support
  # lazy connections via "suggested_pool_concurrency" EdgeDB config

  use GenServer

  alias DBConnection.Holder

  alias EdgeDB.Pool.LazyPool

  @queue_target 50
  @queue_interval 1000
  @idle_interval 1000
  @time_unit 1000

  defmodule State do
    defstruct [
      :type,
      :queue,
      :codel,
      :ts,
      :pool_size,
      :preferred_size,
      :conns_sup,
      :conn_mod,
      :conn_opts
    ]

    def to_connection_pool_format(%__MODULE__{} = state) do
      {state.type, state.queue, state.codel, state.ts}
    end

    def from_connection_pool_format(%__MODULE__{} = state, {type, queue, codel, ts}) do
      %__MODULE__{
        state
        | type: type,
          queue: queue,
          codel: codel,
          ts: ts
      }
    end
  end

  defmodule Codel do
    defstruct [
      :target,
      :interval,
      :delay,
      :slow,
      :next,
      :poll,
      :idle_interval,
      :idle
    ]
  end

  def start_link({conn_mod, opts}) do
    GenServer.start_link(__MODULE__, {conn_mod, opts}, start_opts(opts))
  end

  def checkout(pool, callers, opts) do
    Holder.checkout(pool, callers, opts)
  end

  def disconnect_all(pool, interval, _opts) do
    GenServer.call(pool, {:disconnect_all, interval}, :infinity)
  end

  def init({conn_mod, opts}) do
    queue = :ets.new(__MODULE__.Queue, [:protected, :ordered_set])
    ts = {System.monotonic_time(), 0}
    now_in_native = System.monotonic_time()
    now_in_ms = System.convert_time_unit(now_in_native, :native, @time_unit)

    conn_opts = [owner: self(), queue: queue, conn: [mod: conn_mod, opts: opts]]
    {:ok, _pid} = LazyPool.start_supervised(conn_opts)

    codel = %Codel{
      target: Keyword.get(opts, :queue_target, @queue_target),
      interval: Keyword.get(opts, :queue_interval, @queue_interval),
      delay: 0,
      slow: false,
      next: now_in_ms,
      poll: nil,
      idle_interval: Keyword.get(opts, :idle_interval, @idle_interval),
      idle: nil
    }

    codel = start_idle(now_in_native, start_poll(now_in_ms, now_in_ms, codel))

    state = %State{
      type: :busy,
      queue: queue,
      codel: codel,
      ts: ts,
      pool_size: 1,
      conn_mod: conn_mod,
      conn_opts: conn_opts
    }

    {:ok, state}
  end

  def handle_call(request, from, %State{} = state) do
    formatted_state = State.to_connection_pool_format(state)

    case DBConnection.ConnectionPool.handle_call(request, from, formatted_state) do
      {:reply, result, conn_pool_state} ->
        {:reply, result, State.from_connection_pool_format(state, conn_pool_state)}

      {:noreply, conn_pool_state} ->
        {:noreply, State.from_connection_pool_format(state, conn_pool_state)}
    end
  end

  def handle_info({:set_connections_supervisor, sup_pid}, state) do
    {:noreply, %State{state | conns_sup: sup_pid}}
  end

  def handle_info({:resize_pool, suggested_pool_concurrency}, state) do
    maybe_resize_pool(state, suggested_pool_concurrency)
    {:noreply, %State{state | pool_size: suggested_pool_concurrency}}
  end

  def handle_info(
        {:"ETS-TRANSFER", holder, _pid, {:checkin, _queue, extra}} = request,
        %State{pool_size: current_size, preferred_size: preferred_size} = state
      )
      when current_size != preferred_size and not is_nil(preferred_size) do
    IO.inspect(request)
    IO.inspect(state)

    owner = self()

    case :ets.info(holder, :owner) do
      ^owner ->
        Holder.disconnect(holder, extra)

      :undefined ->
        {:noreply, state}
    end
  end

  def handle_info(request, %State{} = state) do
    IO.inspect(request)

    formatted_state = State.to_connection_pool_format(state)

    case DBConnection.ConnectionPool.handle_info(request, formatted_state) do
      {:reply, result, conn_pool_state} ->
        state = State.from_connection_pool_format(state, conn_pool_state)
        maybe_disconnect(state)
        {:reply, result, state}

      {:noreply, conn_pool_state} ->
        state = State.from_connection_pool_format(state, conn_pool_state)
        maybe_disconnect(state)
        {:noreply, state}
    end
  end

  defp start_opts(opts) do
    Keyword.take(opts, [:name, :spawn_opt])
  end

  defp start_poll(now, last_sent, %Codel{interval: interval} = codel) do
    timeout = now + interval
    poll = :erlang.start_timer(timeout, self(), {timeout, last_sent}, abs: true)
    %Codel{codel | poll: poll}
  end

  defp start_idle(now_in_native, %Codel{idle_interval: interval} = codel) do
    timeout = System.convert_time_unit(now_in_native, :native, :millisecond) + interval
    idle = :erlang.start_timer(timeout, self(), now_in_native, abs: true)
    %Codel{codel | idle: idle}
  end

  defp maybe_resize_pool(%State{pool_size: size} = state, suggeseted_pool_size) do
    cond do
      size < suggeseted_pool_size ->
        start_additional_connections(state, suggeseted_pool_size - size)

      size > suggeseted_pool_size ->
        terminate_connections(state, suggeseted_pool_size - size)

      true ->
        :ok
    end
  end

  defp maybe_disconnect(%State{} = _state) do
    :ok
  end

  defp start_additional_connections(%State{} = state, connections_to_add) do
    for _id <- 1..connections_to_add do
      LazyPool.start_connection(state.conns_sup, state.conn_opts)
    end

    state
  end

  defp terminate_connections(%State{} = state, connections_to_terminate) do
    %State{state | preferred_size: state.pool_size - connections_to_terminate}
  end
end
