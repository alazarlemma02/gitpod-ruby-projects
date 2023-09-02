FactoryBot.define do
  factory :article do
    title{Faker::Name.name}
    content{Faker::Lorem.sentence}
    slug{Faker::Alphanumeric.alpha(number: 3)}
  end
end

