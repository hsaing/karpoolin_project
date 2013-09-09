class CreateCarpoolers < ActiveRecord::Migration
  def change
    create_table :carpoolers do |t|
      t.references :parent, index: true
      t.references :activity, index: true
      t.references :student, index: true
      t.boolean :need_ride
      t.string :notes
      t.boolean :can_drive_up
      t.boolean :can_drive_return

      t.timestamps
    end
  end
end
