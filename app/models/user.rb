class User < ActiveRecord::Base
  
  validates_presence_of :alias, :password
  validates_uniqueness_of :alias
  validates_confirmation_of :password;
  
end
