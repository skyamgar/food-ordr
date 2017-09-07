class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.integer :order_id
      t.integer :cart_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
