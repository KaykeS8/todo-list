defmodule TodoList.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  alias TodoList.Tasks.Task
  alias TodoList.Accounts.User

  schema "todos" do
    field :subject, :string

    belongs_to :user, User
    has_many :tasks, Task

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(todo, attrs, user_scope) do
    todo
    |> cast(attrs, [:subject])
    |> validate_required([:subject])
    |> put_change(:user_id, user_scope.user.id)
  end
end
