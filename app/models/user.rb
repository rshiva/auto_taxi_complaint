class User < ActiveRecord::Base
  attr_accessible :address, :email_id, :mobile , :name ,:complaints_attributes

  has_many :complaints
  accepts_nested_attributes_for :complaints

end
