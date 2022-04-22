class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.datetime :date
      t.text :description
      t.boolean :mark

      t.timestamps
    end
  end
end
