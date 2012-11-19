# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :matter do
    nome_materia "Giardino"
    compresenza false
    giardino true
    altri_costi "no"
    association :weekly_prospect
  end
end
