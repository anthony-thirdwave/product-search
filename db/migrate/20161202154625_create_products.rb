class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :section
      t.string :category1
      t.string :category2
      t.string :category3

      t.timestamps
    end
  end
end
