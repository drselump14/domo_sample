defmodule DomoSample.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :forms, :map

      timestamps()
    end
  end
end
