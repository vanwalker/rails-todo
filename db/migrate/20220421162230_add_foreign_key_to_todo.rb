class AddForeignKeyToTodo < ActiveRecord::Migration[6.1]
  def change
    add_reference :todos, :user, foreign_key: true
  end
end
