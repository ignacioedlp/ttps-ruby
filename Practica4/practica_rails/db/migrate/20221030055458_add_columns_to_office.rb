class AddColumnsToOffice < ActiveRecord::Migration[7.0]
  def change
    add_column :offices, :name, :string, limit: 255, null: false
    add_column :offices, :phone_number, :string, limit: 30, null: false, :unique => true
    add_column :offices, :address, :text
    add_column :offices, :available, :boolean, :default => true, :null => false
  end
end
