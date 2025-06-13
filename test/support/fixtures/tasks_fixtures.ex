defmodule TodoList.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `TodoList.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(scope, attrs \\ %{}) do
    attrs =
      Enum.into(attrs, %{
        description: "some description",
        status: "some status",
        title: "some title"
      })

    {:ok, task} = TodoList.Tasks.create_task(scope, attrs)
    task
  end
end
