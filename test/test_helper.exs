ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ElixirBugzilla.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ElixirBugzilla.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ElixirBugzilla.Repo)

