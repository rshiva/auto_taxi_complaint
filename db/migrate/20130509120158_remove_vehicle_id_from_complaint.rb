class RemoveVehicleIdFromComplaint < ActiveRecord::Migration
  def up
    remove_column :complaints, :vehicle_id
  end

  def down
    add_column :complaints, :vehicle_id, :integer
  end
end
