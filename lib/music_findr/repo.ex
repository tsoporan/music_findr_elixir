defmodule MusicFindr.Repo do
  use Ecto.Repo,
    otp_app: :music_findr,
    adapter: Ecto.Adapters.Postgres
end
