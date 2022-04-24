class AddForeignKeyToGroceries < ActiveRecord::Migration[6.1]
  def change
        add_foreign_key :groceries, :todos
  end
end
