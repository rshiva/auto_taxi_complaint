class AddUserIdAndVehicleIdToComplaint < ActiveRecord::Migration
  def change
    add_column :complaints, :user_id, :integer
    add_index :complaints, :user_id
    add_column :complaints, :vehicle_id, :integer
    add_index :complaints, :vehicle_id
  end
end
