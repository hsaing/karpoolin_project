class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :activity_name, limit: 75
      t.datetime :activity_start_date
      t.datetime :activity_end_date
      t.time :activity_start_time
      t.time :activity_start_time
      t.time :activity_end_time
      t.string :address_street, limit: 45
      t.string :address_city, limit: 45
      t.integer :address_zipcode
      t.string :address_state, limit: 5
      t.string :phone_number, limit: 15
      t.references :parent, index: true

      t.timestamps
    end
  end
end
