defmodule TodoApi.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :title, :string
      add :is_completed, :boolean, default: false

      timestamps
    end

  end
end
