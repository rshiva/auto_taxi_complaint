class User < ActiveRecord::Base
  attr_accessible :address, :email_id, :mobile , :complaints_attributes

  has_many :complaints
  accepts_nested_attributes_for :complaints

end
