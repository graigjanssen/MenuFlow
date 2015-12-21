class AddDoneColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :done, :string
  end
end
