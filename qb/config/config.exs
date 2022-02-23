import Config

config :edgedb,
  qb: [
    path: "lib/qb/edgedb/qb",
    namespace: QB.EdgeDB.QB
  ]

import_config("#{Mix.env()}.exs")
