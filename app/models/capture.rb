class Capture < ActiveRecord::Base
  validates :firm_name, :uniqueness => { :scope => :year, :scope => :month}
end
