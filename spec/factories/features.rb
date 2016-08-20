FactoryGirl.define do

  factory :feature do
    name        { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    trait :with_rating do
      after(:create) do |feature|
        feature.ratings  << create(:rating)
      end
    end
  end

end
