FactoryGirl.define do

  factory :rating do
    stars { rand(1...5) }
  end

end
