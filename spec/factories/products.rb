FactoryGirl.define do

  factory :product do
    title       { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph(12) }
    trait :with_photos do
      photos    { build_list(:photo, 1) }
    end
    trait :with_rated_features do
      after(:create) do |product|
        product.features << create(:feature, :with_rating)
      end
    end
  end

end
