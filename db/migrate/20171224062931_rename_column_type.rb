class RenameColumnType < ActiveRecord::Migration[5.1]
  def change
  	rename_column :cars, :type, :car_type
  end
end
