class User < ActiveRecord::Base
  
  validates_presence_of :alias, :password
  
  
end
