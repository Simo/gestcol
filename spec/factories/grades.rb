# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :grade do
    descr_classe "Prima asilo"
    association :weekly_prospect
  end
end
