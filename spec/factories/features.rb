FactoryGirl.define do

  factory :feature do
    name        { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
  end

end
