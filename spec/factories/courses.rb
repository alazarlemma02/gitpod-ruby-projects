FactoryBot.define do
  factory :course do
    code { Faker::Alphanumeric.alpha(number: 4) }
    name { Faker::Name.name }
    status { false }
  end
end
