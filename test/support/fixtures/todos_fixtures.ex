defmodule DomoSample.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `DomoSample.Todos` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(attrs \\ %{}) do
    {:ok, todo} =
      attrs
      |> DomoSample.Todos.create_todo()

    todo
  end
end
