class ChangeDescriptionAndPriceAndAddInStocktoProducts < ActiveRecord::Migration
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, price: :decimal, precision: 12, scale: 2
    add_column :products, :in_stock, :boolean, :default => true
  end
end
