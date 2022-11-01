class AddColumnsToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :name, :string, limit: 150, null: false
    add_column :employees, :e_number, :integer, null: false, unique: true
    add_reference :employees, :office, foreign_key: true, null: true
  end
end
