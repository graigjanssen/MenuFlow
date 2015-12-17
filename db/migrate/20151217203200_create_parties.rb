class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :location
      t.integer :size
      t.decimal :balance
      t.string :paid

      t.timestamps null: false
    end
  end
end
