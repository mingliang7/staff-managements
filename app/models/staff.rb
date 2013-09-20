class Staff < ActiveRecord::Base
  belongs_to :department
  attr_accessible :age, :dob, :first_name, :last_name, :role, :salary, :sex, :department_id, :address
  validates_presence_of :age, :dob, :first_name, :last_name, :role, :salary, :sex, :department_id
 scope :order_firstname , order("first_name")

end
