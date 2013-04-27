class RenameColumnFromToToFromToFly < ActiveRecord::Migration
  def up
  	rename_column :complaints , :from_to , :from_to_fly
  end

  def down
  	rename_column :complaints , :from_to_fly , :from_to
  end
end
