require 'test_helper'

class MatterTest < ActiveSupport::TestCase
  
  test "testing association" do
    matter = Matter.find(1)
    assert_respond_to matter, :grades
  end
  
  test "matter applied to 2 classes" do
    matter = Matter.find(1)
    assert_equal 2, matter.grades.size
  end
  
end
