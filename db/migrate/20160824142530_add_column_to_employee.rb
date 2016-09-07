class AddColumnToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :email, :string
    add_column :employees, :phone, :string
  end
end
