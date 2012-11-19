# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :weekly_prospect do
    association :prospect_structure
    association :grade
    association :day
    association :timeframe
  end
end
