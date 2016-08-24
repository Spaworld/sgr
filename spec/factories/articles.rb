FactoryGirl.define do

  factory :article do
    title  { Faker::Company.catch_phrase }
    body   { Faker::Lorem.paragraphs }
    slug   { Faker::Internet.slug('foo bar', '-') }
    trait :with_photos do
      after(:create) do |article|
        article.photos << create_list(:photo, 3)
      end
    end

  end

end
