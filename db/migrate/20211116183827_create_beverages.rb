class CreateBeverages < ActiveRecord::Migration[6.1]
  def change
    create_table :beverages do |t|
      t.string :name
      t.text :description
      t.float :size
      t.references :category, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
