defmodule DomoSample.TodosTest do
  use DomoSample.DataCase

  alias DomoSample.Todos

  describe "todos" do
    alias DomoSample.Todos.Todo

    import DomoSample.TodosFixtures

    test "list_todos/0 returns all todos" do
      todo = todo_fixture()
      assert Todos.list_todos() == [todo]
    end

    test "get_todo!/1 returns the todo with given id" do
      todo = todo_fixture()
      assert Todos.get_todo!(todo.id) == todo
    end

    test "create_todo/1 with valid data creates a todo" do
      valid_attrs = %{}

      assert {:ok, %Todo{}} = Todos.create_todo(valid_attrs)
    end

    test "update_todo/2 with valid data updates the todo" do
      todo = todo_fixture()

      update_attrs = %{}

      assert {:ok, %Todo{}} = Todos.update_todo(todo, update_attrs)
    end

    test "delete_todo/1 deletes the todo" do
      todo = todo_fixture()
      assert {:ok, %Todo{}} = Todos.delete_todo(todo)
      assert_raise Ecto.NoResultsError, fn -> Todos.get_todo!(todo.id) end
    end

    test "change_todo/1 returns a todo changeset" do
      todo = todo_fixture()
      assert %Ecto.Changeset{} = Todos.change_todo(todo)
    end
  end
end
