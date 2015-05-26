class User < ActiveRecord::Base

validates :login, :uniqueness => true, :presence => true
validates :password, :uniqueness => true, :presence => true
validates :account_id, :presence => true

belongs_to :account


end
