defmodule ElixirBugzilla.UserView do
  use ElixirBugzilla.Web, :view
  alias ElixirBugzilla.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
