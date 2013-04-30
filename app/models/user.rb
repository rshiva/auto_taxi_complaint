class User < ActiveRecord::Base
  attr_accessible :address, :email_id, :mobile , :name

  has_many :complaints
  accepts_nested_attributes_for :complaints

end
