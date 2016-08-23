FactoryGirl.define do

  factory :product_feature do
    product_id  { rand(1...10) }
    feature_id  { rand(1...10) }
    rating      { rand(1...5)  }
    description { Faker::Lorem.paragraph(12) }
  end

end
