class CreateRates < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :price
      t.integer :star, default: 0

      t.timestamps null: false
    end
  end
end
