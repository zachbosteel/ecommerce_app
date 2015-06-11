class FixColumnsInOrders < ActiveRecord::Migration
  def change
    remove_column :orders, '10', :decimal
    remove_column :orders, '2', :decimal
  end
end
