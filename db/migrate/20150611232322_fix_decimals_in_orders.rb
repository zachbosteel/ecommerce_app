class FixDecimalsInOrders < ActiveRecord::Migration
  def change
    change_column :orders, :subtotal_price, :decimal, precision: 10, scale: 2
    change_column :orders, :total_price, :decimal, precision: 10, scale: 2
    change_column :orders, :tax, :decimal, precision: 10, scale: 2
  end
end
