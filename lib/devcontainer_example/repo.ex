defmodule DevcontainerExample.Repo do
  use Ecto.Repo,
    otp_app: :devcontainer_example,
    adapter: Ecto.Adapters.Postgres
end
