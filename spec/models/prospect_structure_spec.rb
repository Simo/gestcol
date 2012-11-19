require File.dirname(__FILE__) + '/../spec_helper'

describe ProspectStructure do
  it "should be valid" do
    ProspectStructure.new.should be_valid
  end
end
