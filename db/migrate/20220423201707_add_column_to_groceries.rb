class AddColumnToGroceries < ActiveRecord::Migration[6.1]
  def change
    add_column :groceries, :todo_id, :integer
  end
end
