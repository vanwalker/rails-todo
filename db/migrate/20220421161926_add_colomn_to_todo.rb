class AddColomnToTodo < ActiveRecord::Migration[6.1]
  def change
    add_column :todos, :user_id, :integer
  end
end
