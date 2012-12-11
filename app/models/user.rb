class User < ActiveRecord::Base
  
  validates_presence_of :alias, :password
  validates_uniqueness_of :alias
  validates_confirmation_of :password;
  attr_accessible :photo, :alias, :password, :date, :msn, :email, :description, :privileges, :id
  
  has_attached_file :photo, :url => "/system/users/:id/:basename.:extension", :default_url => "/assets/users/none.png",
    :path => ":rails_root/public/system/users/:id/:basename.:extension"
  
end
