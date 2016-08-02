defmodule ElixirBugzilla.Repo do

  @moduledoc """
  In memory Repository
  """

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end

  def all(ElixirBugzilla.User) do
    [%ElixirBugzilla.User{id: "1", name: "José", username: "josevalim", password: "elixir"},
     %ElixirBugzilla.User{id: "2", name: "Bruce", username: "redrapids", password: "7langs"},
     %ElixirBugzilla.User{id: "3", name: "Chris", username: "chrismccord", password: "phx"}]
  end
  def all(_module), do: []

end
