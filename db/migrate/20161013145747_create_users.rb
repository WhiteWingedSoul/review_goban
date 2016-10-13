class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :remember_digest
      t.string :picture
      t.datetime :birthday
      t.integer :gender
      t.string :country
      t.string :state
      t.string :phone
      t.boolean :admin, default: false

      t.timestamps null: false
    end
  end
end
