class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.string :minutes
      t.integer :locality_id

      t.timestamps null: false
    end
  end
end
