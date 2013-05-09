class AddComplaintIdToVehicle < ActiveRecord::Migration
  def change
    add_column :vehicles, :complaint_id, :integer
  end
end
