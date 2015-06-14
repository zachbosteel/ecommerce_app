class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.integer :total_price
      t.integer :subtotal_price
      t.integer :tax

      t.timestamps null: false
    end
  end
end
