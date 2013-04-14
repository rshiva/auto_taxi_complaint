class RenameVehicleTypeToVehicleTypes < ActiveRecord::Migration
  def up
  	rename_column :vehicles , :type , :vehicle_types
  end

  def down
  	rename_column :vehicles , :vehicle_types , :type
  end
end
