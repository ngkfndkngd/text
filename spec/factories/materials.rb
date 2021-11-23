FactoryBot.define do
  factory :material do
    ingredient { Faker::Lorem.characters(number: 10) }
    amount { Faker::Lorem.characters(number: 2) }
  end
end
