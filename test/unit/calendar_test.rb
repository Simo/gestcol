require 'test_helper'

class CalendarTest < ActiveSupport::TestCase

  test "calendar from a given almanac" do
  	assert_equal 2, Calendar.where(:almanac_id => 233).first.timeframe_id
  end  
end
