defmodule(QB.EdgeDB.QB.Modules.Cfg.AbstractConfig) do
  [
    (
      @properties [QB.EdgeDB.QB.Modules.Cfg.ConfigObject]
                  |> Enum.map(fn base -> base.__properties__() end)
                  |> Enum.concat([
                    :session_idle_timeout,
                    :session_idle_transaction_timeout,
                    :query_execution_timeout,
                    :listen_port,
                    :listen_addresses,
                    :allow_dml_in_functions,
                    :allow_bare_ddl,
                    :shared_buffers,
                    :query_work_mem,
                    :effective_cache_size,
                    :effective_io_concurrency,
                    :default_statistics_target
                  ])
                  |> List.flatten()
      @link_properties [QB.EdgeDB.QB.Modules.Cfg.ConfigObject]
                       |> Enum.map(fn base -> base.__link_properties__() end)
                       |> Enum.concat([])
                       |> List.flatten()
      @links [QB.EdgeDB.QB.Modules.Cfg.ConfigObject]
             |> Enum.map(fn base -> base.__links__() end)
             |> Enum.concat([:auth])
             |> List.flatten()
      @backlinks [QB.EdgeDB.QB.Modules.Cfg.ConfigObject]
                 |> Enum.map(fn base -> base.__backlinks__() end)
                 |> Enum.concat([])
                 |> List.flatten()
      @backlink_stubs [QB.EdgeDB.QB.Modules.Cfg.ConfigObject]
                      |> Enum.map(fn base -> base.__backlink_stubs__() end)
                      |> Enum.concat([])
                      |> List.flatten()
      (
        object_name = :abstract_config
        card = :many

        def(__new__) do
          obj = unquote(object_name)()

          obj
          |> EdgeDB.QB.Reflection.TypeSystem.to_set(unquote(card))
          |> EdgeDB.QB.Syntax.Path.path_node(nil, true)
        end
      )

      def(__type__) do
        :object
      end

      def(__properties__) do
        @properties
      end

      def(__link_properties__) do
        @link_properties
      end

      def(__links__) do
        @links
      end

      def(__backlinks__) do
        @backlinks
      end

      def(__backlink_stubs__) do
        @backlink_stubs
      end

      (
        object_name = :abstract_config
        type_id = "7268fc76-8a10-11ec-8ce8-45c375a2833a"

        defp(unquote(object_name)()) do
          EdgeDB.QB.Reflection.Hydrate.make_type(
            unquote(type_id),
            &EdgeDB.QB.Syntax.Literal.literal/2
          )
        end
      )
    )
  ]
end