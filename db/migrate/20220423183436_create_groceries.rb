class CreateGroceries < ActiveRecord::Migration[6.1]
  def change
    create_table :groceries do |t|
      t.string :nom
      t.integer :quantity

      t.timestamps
    end
  end
end
