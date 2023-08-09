defmodule DomoSample.Todos.Todo do
  use Domo, skip_defaults: true
  use TypedEctoSchema
  use Ecto.Schema

  import Domo.Changeset
  import Ecto.Changeset

  typed_schema "todos" do
    embeds_many :forms, DomoSample.Todos.Form

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [])
    |> cast_embed(:forms)
    |> validate_type()
  end
end
