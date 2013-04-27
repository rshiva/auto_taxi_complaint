class AddColumnFromToLuggageToComplaint < ActiveRecord::Migration
  def change
  	add_column :complaints, :from_to_luggage , :string
  end
end
