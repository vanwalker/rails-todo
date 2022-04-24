class RemoveColumnFromGroceries < ActiveRecord::Migration[6.1]
  def change
    remove_column :groceries, :todos_id
  end
end
