FactoryGirl.define do

  factory :feature do
    name        { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    trait :with_rating_of_3 do
      after(:create) do |feature|
        create(:product_feature, feature: feature, rating: 3)
      end
    end
  end

end
