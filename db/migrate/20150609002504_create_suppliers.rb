class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :supplier_email
      t.string :supplier_phone_number

      t.timestamps null: false
    end
  end
end
