class AddPriorityToGroceries < ActiveRecord::Migration[6.1]
  def change
    add_column :groceries, :priority, :integer
  end
end
