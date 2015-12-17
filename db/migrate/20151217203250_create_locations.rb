class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :number
      t.integer :capacity
      t.references :party, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
