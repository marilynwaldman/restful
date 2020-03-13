defmodule Restful.Repo do
  use Ecto.Repo,
    otp_app: :restful,
    adapter: Ecto.Adapters.Postgres
end
