class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name 
      t.string :sel_foods
      t.integer :quantity

      t.timestamps
    end
  end
end
