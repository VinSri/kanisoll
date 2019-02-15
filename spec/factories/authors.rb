FactoryBot.define do
  factory :author do      
    author_id { Faker::IDNumber.valid }
    given_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    description { Faker::Lorem.characters }
    birth_country { Faker::Nation.nationality }
    recognition { Faker::Lorem.word }
  end
end