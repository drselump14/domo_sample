defmodule DomoSample.Todos.Form do
  use Domo, skip_defaults: true
  use TypedEctoSchema
  use Ecto.Schema

  import Ecto.Changeset

  @available_statuses [:draft, :created, :answered, :concluded]
  @available_types [:text, :radio, :checkbox, :number]

  @derive Jason.Encoder
  typed_embedded_schema do
    field(:status, Ecto.Enum, values: @available_statuses, default: :draft)
    field(:type, Ecto.Enum, values: @available_types)
    field(:question, :string)
    field(:answer, :string)
  end

  def changeset(form, attrs) do
    form
    |> cast(attrs, [:question, :answer, :status, :type])
    |> cast_embed(:choices, required: true)
    |> validate_required([:question])
  end
end
