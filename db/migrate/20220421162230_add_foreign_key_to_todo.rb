class AddForeignKeyToTodo < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :todos, :users
  end
end
