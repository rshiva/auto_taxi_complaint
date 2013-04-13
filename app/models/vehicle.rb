class Vehicle < ActiveRecord::Base
  attr_accessible :number, :type,:complaints_attributes

  has_many :complaints
  accepts_nested_attributes_for :complaints

end
