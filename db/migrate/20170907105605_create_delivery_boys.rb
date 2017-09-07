class CreateDeliveryBoys < ActiveRecord::Migration
  def change
    create_table :delivery_boys do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :mob_no

      t.timestamps null: false
    end
  end
end
