class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name, limit: 75
      t.string :last_name, limit: 75
      t.string :email, limit: 45
      t.string :password_digest
      t.string :address_street, limit: 45
      t.string :address_city, limit: 45
      t.integer :address_zipcode
      t.string :address_state, limit: 5
      t.string :phone_home, limit: 15
      t.string :phone_mobile, limit: 15

      t.timestamps
    end
  end
end
