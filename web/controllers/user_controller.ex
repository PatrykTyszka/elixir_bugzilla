defmodule ElixirBugzilla.UserController do
  use ElixirBugzilla.Web, :controller

  def index(conn, _params) do
    users = Repo.all(ElixirBugzilla.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(ElixirBugzilla.User, id)
    render conn, "show.html", user: user
  end
end
