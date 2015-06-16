class CreateCartedProducts < ActiveRecord::Migration
  def change
    create_table :carted_products do |t|
      t.string :status
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
