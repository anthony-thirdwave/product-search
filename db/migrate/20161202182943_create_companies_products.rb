class CreateCompaniesProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :companies_products do |t|
      t.references :product, foreign_key: true
      t.references :company, foreign_key: true
    end
  end
end
