class Complaint < ActiveRecord::Base
  attr_accessible :bus_stop_name, :charged_and_allowed_other_complainant, :charged_for_luggage, :excess_charged, :fly_destination, :from_to, :from_to, :indecent_behaviour, :occurence_date_time, :other_complaints, :place_occurence

belongs_to :user
belongs_to :vehicle  
end
