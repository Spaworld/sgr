FactoryGirl.define do

  factory :feature do
    name        { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    trait :with_rating do
      after(:create) do |feature|
        create(:product_feature, feature_id: feature.id, rating: 3.3)
      end
    end
  end

end
