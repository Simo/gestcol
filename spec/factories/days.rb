# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :day do
    giornata "Lunedi"
    prt 1
    association :weekly_prospect
  end
end
