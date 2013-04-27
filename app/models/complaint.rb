class Complaint < ActiveRecord::Base
  attr_accessible :bus_stop_name, :charged_and_allowed_other_complainant, :charged_for_luggage, :excess_charged, :fly_destination, :from_to_fly, :from_to_luggage, :indecent_behaviour, :occurence_date_time, :other_complaints, :place_occurence,
  								 :user_attributes , :vehicle_attributes


	belongs_to :user
	belongs_to :vehicle 

	accepts_nested_attributes_for :vehicle
	accepts_nested_attributes_for :user

end
