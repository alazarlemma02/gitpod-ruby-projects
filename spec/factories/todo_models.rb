FactoryBot.define do
  factory :todo_model do
    task { Faker::Lorem.word }
    isCompleted { false }
  end
end
