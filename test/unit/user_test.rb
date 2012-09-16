require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
    
  test "should not add user without alias and password" do
    user = User.create(
      :name => "stoffe")

    assert !user.save, "Tried to save user without alias and password"
  end
  
  test "should not add user with duplicate alias" do
    user = User.create(:alias => "mysta", :password => "password")
    
    assert !user.save, "Tried to save user with duplicate alias"
  end
  
  test "should get user" do
    flunk("Unimplemented")
  end
  
end
