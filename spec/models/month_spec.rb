require File.dirname(__FILE__) + '/../spec_helper'

describe Month do
  it "should be valid" do
    Month.new.should be_valid
  end
end
