class CreateBagels < ActiveRecord::Migration[7.0]
  def change
    create_table :bagels do |t|
      t.string :flavor
      t.boolean :toasted
      t.string :topping
      t.integer :price

      t.timestamps
    end
  end
end
