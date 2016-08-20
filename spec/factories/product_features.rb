FactoryGirl.define do

  factory :product_feature do
    product_id { rand(1...10) }
    feature_id { rand(1...10) }
  end

end
