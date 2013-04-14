class Vehicle < ActiveRecord::Base
  attr_accessible :number, :vehicle_types , :complaints_attributes

  has_many :complaints
  accepts_nested_attributes_for :complaints

  def self.vehicle_types
  	@types=  ["Auto","Taxi","Bus"]
  end

end
