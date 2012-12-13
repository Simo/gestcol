require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "person should have relations" do
    assert_equal 2, Person.find(1).directs
  end
end
