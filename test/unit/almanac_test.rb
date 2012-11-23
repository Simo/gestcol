require 'test_helper'

class AlmanacTest < ActiveSupport::TestCase
  
  test "month's (february) max day" do
    almanac = Almanac.new(:month_id => 2)
    assert_equal 28, almanac.max_day
  end
  
  test "month's (february bixestil) max day" do
    almanac = Almanac.new(:month_id => 2, :anno => 2016)
    assert_equal 29, almanac.max_day
  end
  
  test "month's (april) max day" do
    almanac = Almanac.new(:month_id => 4)
    assert_equal 30, almanac.max_day
  end
  
  test "month's (december) max day" do
    almanac = Almanac.new(:month_id => 12)
    assert_equal 31, almanac.max_day
  end
  
  test "week ending day inside the month" do
    almanac = Almanac.new(:month_id => 2, :anno => 2013, :giorno_inizio => 20)
    assert_equal 26, almanac.fine_settimana
  end
  
  test "month's end restart days count" do
    almanac = Almanac.new(:month_id => 2, :anno => 2013, :giorno_inizio => 27)
    assert_equal 5, almanac.fine_settimana
  end
  
  test "set the very next week number" do
    almanac = almanacs(:one)
    new_almanac = Almanac.new
    assert_equal 53, new_almanac.imposta_settimana(almanac)
  end
  
  test "set week number to one at the changing of the year" do
    almanac = almanacs(:two)
    new_almanac = Almanac.new
    assert_equal 1, new_almanac.imposta_settimana(almanac)
  end
  
  
end
