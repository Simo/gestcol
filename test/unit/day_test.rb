require 'test_helper'

class DayTest < ActiveSupport::TestCase
  test "should return the working days" do
    days = Day.all
    assert_equal 7, days.size
  end
end
