defmodule EdgeDB.QB.Generation do
  alias EdgeDB.QB.Reflection.Queries
  alias EdgeDB.QB.Generation.Generators
  alias EdgeDB.QB.Generation

  def module_path(name) do
    namespace_parts = Module.split(EdgeDB.QB.namespace())
    parts = Module.split(name) -- namespace_parts

    parts =
      Enum.map(parts, fn part ->
        part
        |> Macro.underscore()
        |> String.downcase()
      end)

    path = Path.join([EdgeDB.QB.path() | parts])
    "#{path}.ex"
  end

  def module_name(extra_namespace \\ nil, name, opts \\ []) do
    name =
      name
      |> List.wrap()
      |> Enum.map(fn name ->
        name
        |> to_string()
        |> Macro.camelize()
      end)

    name =
      if extra_namespace do
        [extra_namespace | name]
      else
        name
      end

    if opts[:relative] do
      Module.concat(name)
    else
      Module.concat([EdgeDB.QB.namespace() | name])
    end
  end

  def generate_modules(pid) do
    [types, scalars, casts, functions, operators] =
      Task.await_many([
        Task.async(fn -> Queries.GetTypesQuery.execute(pid) end),
        Task.async(fn -> Queries.GetScalarsQuery.execute(pid) end),
        Task.async(fn -> Queries.GetCastsQuery.execute(pid) end),
        Task.async(fn -> Queries.GetFunctionsQuery.execute(pid) end),
        Task.async(fn -> Queries.GetOperatorsQuery.execute(pid) end)
      ])

    types_by_name =
      Enum.into(types, %{}, fn {_id, type} ->
        {type.name, type}
      end)

    generation_params = %{
      types: types,
      types_by_name: types_by_name,
      casts: casts,
      scalars: scalars,
      functions: functions,
      operators: operators
    }

    [
      Generators.TypesGenerator.generate(generation_params),
      Generators.CastMapsGenerator.generate(generation_params),
      Generators.ScalarsGenerator.generate(generation_params),
      Generators.ObjectTypeGenerator.generate(generation_params),
      Generators.FunctionsGenerator.generate(generation_params),
      mock(:generate_operators),
      Generators.SetFnGenerator.generate(generation_params)
    ]
    |> List.flatten()
    |> Enum.group_by(fn %{name: name} ->
      name
    end)
    |> Enum.map(fn {name, modules} ->
      %Generation.Module{
        name: name,
        code:
          Enum.map(modules, fn %{code: code} ->
            code
          end)
      }
    end)
  end

  defp mock(_atom) do
    %Generation.Module{name: TemporaryMock, code: quote(do: nil)}
  end
end
