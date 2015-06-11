class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.decimal :total_price, 10, 2
      t.decimal :subtotal_price, 10, 2
      t.decimal :tax, 10, 2

      t.timestamps null: false
    end
  end
end
