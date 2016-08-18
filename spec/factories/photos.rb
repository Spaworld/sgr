FactoryGirl.define do

  factory :photo do
    file { File.new("#{Rails.root}/spec/support/images/foo.png") }
  end

end
