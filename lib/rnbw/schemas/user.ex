defmodule Rnbw.Schemas.User do
  use Ecto.Schema

  schema "users" do
    field :email
    field :pw
    field :pw_confirm, :string, virtual: true
    field :active, :boolean
  end
end
