class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.string :name
      t.string :description
      t.string :detail
      t.string :image
      t.decimal :price
      t.integer :promotion
      t.boolean :is_display
      t.timestamps null: false
    end
  end
end
