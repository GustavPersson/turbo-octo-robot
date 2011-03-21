require 'test_helper'

class NoticesCellTest < Cell::TestCase
  test "display" do
    invoke :display
    assert_select "p"
  end
  
  test "add" do
    invoke :add
    assert_select "p"
  end
  
  test "remove" do
    invoke :remove
    assert_select "p"
  end
  

end
