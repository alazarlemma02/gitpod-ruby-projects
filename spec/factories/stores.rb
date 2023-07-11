FactoryBot.define do
  factory :store do
    code { Faker::Alphanumeric.alpha(number: 8) }
    name { Faker::Name.name }
    length { 10 }
    width { 12 }
    height { 4 }
    warehouse
  end
end
