['price', 'quality', 'warranty', 'installation', 'vapor', 'heat', 'noise', 'maintenance'].each do |feature_name|
  feature           = FactoryGirl.create(:feature, name: feature_name.capitalize)
  feature_photo     = FactoryGirl.create(:photo, file:File.new("#{Rails.root}/spec/support/images/#{feature_name}.png"))
  feature.photos           << feature_photo
end

['Amerec', 'Kohler', 'MrSteam', 'Steamist', 'SteamSpa', 'Thermasol'].each do |brand_name|
  brand             = FactoryGirl.create(:brand, name: brand_name)
  brand_photo       = FactoryGirl.create(:photo, file: File.new("#{Rails.root}/spec/support/images/#{brand_name.downcase}-logo.png") )
  product           = FactoryGirl.create(:product, title: "#{brand_name} Steam Generator")
  product_photo     = FactoryGirl.create(:photo, file: File.new("#{Rails.root}/spec/support/images/#{brand_name.downcase}-steam-generator.jpg") )
  brand.photos      << brand_photo
  product.photos    << product_photo
  brand.products    << product
  product.features  << Feature.all
end

Product.all.each do |product|
  product.features.each do |feature|
    feature.update_rating(product.id, rand(1...5))
    feature.update_description(product.id, Faker::Lorem.paragraph(12))
  end
end

