require File.dirname(__FILE__) + '/../spec_helper'

describe Matter do
  it "should be valid" do
    Matter.new.should be_valid
  end
end
