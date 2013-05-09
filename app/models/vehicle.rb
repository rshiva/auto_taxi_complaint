class Vehicle < ActiveRecord::Base
  attr_accessible :number, :vehicle_types 

  belongs_to :complaint



  #validates :vehicle_types, :presence => true
  #validates :number, :presence => true


  def self.vehicle_types
  	@types=  ["Auto","Taxi","Bus"]
  end

end
