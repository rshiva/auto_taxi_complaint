class Vehicle < ActiveRecord::Base
  attr_accessible :number, :vehicle_types , :complaints_attributes

  has_many :complaints
  accepts_nested_attributes_for :complaints

  validates :vehicle_types, :presence => true
  validates :number, :presence => true


  def self.vehicle_types
  	@types=  ["Auto","Taxi","Bus"]
  end

end
