class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :staffs, :dependent =>  :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
  scope :order_name, order("name")
end
