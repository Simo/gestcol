# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relationship do
    person_id 1
    related_id 1
    degree_id 1
  end
end
