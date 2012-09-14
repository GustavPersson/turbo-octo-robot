class KaathVagarbetare < ActiveRecord::Base
  
  validates_presence_of :name
  validates_confirmation_of :password

end