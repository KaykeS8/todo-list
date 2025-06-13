defmodule TodoListWeb.TodoController do
  use TodoListWeb, :controller

  def index(conn, _params) do
    conn
    |> render(:index)
  end
end
