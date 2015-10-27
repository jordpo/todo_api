# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TodoApi.Repo.insert!(%SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias TodoApi.Repo
alias TodoApi.Todo

Repo.insert!(%Todo{title: "Create an app", is_completed: true})
Repo.insert!(%Todo{title: "Prepare the Ember UI", is_completed: false})
Repo.insert!(%Todo{title: "Link the UI with the API", is_completed: false})
