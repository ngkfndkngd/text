FactoryBot.define do
  factory :recipe do
    name { Faker::Lorem.characters(number: 10) }
    count { Faker::Lorem.characters(number: 2) }
    description { Faker::Lorem.characters(number: 30) }
    work { Faker::Lorem.characters(number: 20) }
    recipe_image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/no_image.jpeg')) }
  end
end
