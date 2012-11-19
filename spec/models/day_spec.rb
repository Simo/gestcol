require File.dirname(__FILE__) + '/../spec_helper'

describe Day do
  it "should filter only the working day" do
    days = Day.working_days
    days.size.should == 5
  end
end
