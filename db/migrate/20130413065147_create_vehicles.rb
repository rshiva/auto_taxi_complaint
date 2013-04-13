class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :number

      t.timestamps
    end
    add_index :vehicles, :type
  end
end
