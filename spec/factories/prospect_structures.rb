# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :prospect_structure do
    descrizione "Primo prospetto"
    valido true
    association :weekly_prospect
  end
end
