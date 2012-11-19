require File.dirname(__FILE__) + '/../spec_helper'

describe Timeframe do
  it "should be valid" do
    Timeframe.new.should be_valid
  end
end
