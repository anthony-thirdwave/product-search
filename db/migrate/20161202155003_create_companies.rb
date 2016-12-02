class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
