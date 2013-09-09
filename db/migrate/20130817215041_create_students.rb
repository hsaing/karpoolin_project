class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name, limit: 75
      t.string :last_name, limit: 75
      t.string :email, limit: 45
      t.string :gender, limit: 2
      t.date :birth_date
      t.string :home_school_name, limit: 75
      t.string :school_address_street, limit: 45
      t.string :school_address_city, limit: 45
      t.integer :school_address_zipcode
      t.string :school_address_state, limit: 5
      t.string :school_phone_number, limit: 15
      t.references :parent, index: true

      t.timestamps
    end
  end
end
