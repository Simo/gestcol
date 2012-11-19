# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :timeframe do
    orario "8.30 - 9.30"
    inizio "8:30"
    fine "9:30"
    association :weekly_prospect
  end
end
