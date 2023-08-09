defmodule DomoSample.Repo do
  use Ecto.Repo,
    otp_app: :domo_sample,
    adapter: Ecto.Adapters.Postgres
end
