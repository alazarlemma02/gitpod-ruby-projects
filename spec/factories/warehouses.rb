FactoryBot.define do
  factory :warehouse do
    code { Faker::Alphanumeric.alpha(number: 8) }
    name { Faker::Name.name }
    location { Faker::Address.city }
  end
end
