class CreateDonors < ActiveRecord::Migration[5.0]
  def change
    create_table :donors do |t|
      t.string :last_name
      t.string :first_name
      t.string :address
      t.float  :latitude
      t.float  :longitude
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
