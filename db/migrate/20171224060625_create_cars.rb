class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :price
      t.integer :horsepower
      t.string :type

      t.timestamps
    end
  end
end
