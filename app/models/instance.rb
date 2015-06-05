class Instance < ActiveRecord::Base
  validates :login, :presence => :true, :uniqueness => :true
  validates :pw, :presence => :true, :uniqueness => :true
  validates :account_id, :presence => :true


end
