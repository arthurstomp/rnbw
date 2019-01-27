defmodule Rnbw.Repo do
  use Ecto.Repo,
    otp_app: :rnbw,
    adapter: Ecto.Adapters.Postgres
end
