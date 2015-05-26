class Salesperson < ActiveRecord::Base

validates :first_name, :presence => true
validates :last_name, :presence => true
validates :first_name, :uniqueness => { :scope => :last_name}



has_many :accounts

end
