require 'test_helper'

class ProspectStructureTest < ActiveSupport::TestCase
  
  test "applying prospect to almanacs, the calendars are not empty" do
    almanax = [almanacs(:one), almanacs(:two)]
    prospect = ProspectStructure.find(1)
    prospect.apply_to_calendar(almanax)
    assert_not_equal 0, Calendar.all.size
  end
  
  test "applying prospect to almanacs, the calendars are the exact number" do
    almanax = [almanacs(:one), almanacs(:two)]
    prospect = ProspectStructure.find(1)
    wps = WeeklyProspect.where(:prospect_structure_id => prospect.id)
    prospect.apply_to_calendar(almanax)
    assert_equal wps.size*2, Calendar.all.size
  end
  
end
