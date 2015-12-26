class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
