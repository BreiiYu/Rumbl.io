defmodule Rumbl.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :password, :string
    field :user_name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :user_name, :password])
    |> validate_required([:name, :user_name, :password])
  end
end
