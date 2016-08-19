FactoryGirl.define do

  factory :product do
    title       { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }
    trait :with_photos do
      photos    { build_list(:photo, 1) }
    end
  end

end
