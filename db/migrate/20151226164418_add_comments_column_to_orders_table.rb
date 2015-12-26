class AddCommentsColumnToOrdersTable < ActiveRecord::Migration
  def change
    add_column :orders, :comments, :string
  end
end
