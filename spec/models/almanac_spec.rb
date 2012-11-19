require File.dirname(__FILE__) + '/../spec_helper'

describe Almanac do
  it "should be valid" do
    Almanac.new.should be_valid
  end
end
