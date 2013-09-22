class Staff < ActiveRecord::Base
  belongs_to :department
  attr_accessible :age, :dob, :first_name, :last_name, :role, :salary, :sex, :department_id, :address
  validates_presence_of :age, :dob, :first_name, :last_name, :role, :salary, :sex, :department_id
 scope :order_firstname , order("first_name")


 def self.search(search)
 	if search 
 		find(:all, conditions:['first_name || last_name iLIKE ?', "%#{search}%"])
 	else
 		find(:all)
 	end
 end

end
