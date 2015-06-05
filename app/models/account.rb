class Account < ActiveRecord::Base

validates :firm_name, :presence => true
validates :city, :presence => true
validates :firm_name, :uniqueness => { :scope => :city}
validates :monthly_rate, :presence => true
validates :salesperson_id, :presence => true

has_many :instances
belongs_to :salesperson

end
