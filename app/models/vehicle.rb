class Vehicle < ActiveRecord::Base
  attr_accessible :number, :type

  has_many :complaints
end
