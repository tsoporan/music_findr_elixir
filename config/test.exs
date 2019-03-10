use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :music_findr, MusicFindrWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :music_findr, MusicFindr.Repo,
  username: "postgres",
  password: "postgres",
  database: "music_findr_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
