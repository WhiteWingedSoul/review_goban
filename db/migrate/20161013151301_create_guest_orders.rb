class CreateGuestOrders < ActiveRecord::Migration
  def change
    create_table :guest_orders do |t|
      t.integer :follower_id
      t.integer :followed_id
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
