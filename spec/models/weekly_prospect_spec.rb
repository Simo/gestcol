require File.dirname(__FILE__) + '/../spec_helper'

describe WeeklyProspect do
  it "should take the name of day assigned" do
    wp = Factory(:weekly_prospect)
    wp.day_id.should != nil
  end
end
