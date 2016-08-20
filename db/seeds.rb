# TODO: adjust per new schema
# ['price', 'quality', 'warranty', 'installation', 'vapor', 'heat', 'noise', 'maintenance'].each do |feature_name|
#   feature           = FactoryGirl.create(:feature, :with_rating,  name: feature_name.capitalize)
#   feature_photo     = FactoryGirl.create(:photo, file:File.new("#{Rails.root}/spec/support/images/#{feature_name}.png"))
#   feature.photos           << feature_photo
# end

# ['Amerec', 'Kohler', 'MrSteam', 'Steamist', 'SteamSpa', 'Thermasol'].each do |brand_name|
#   brand             = FactoryGirl.create(:brand, name: brand_name)
#   brand_photo       = FactoryGirl.create(:photo, file: File.new("#{Rails.root}/spec/support/images/#{brand_name.downcase}-logo.jpg") )
#   product           = FactoryGirl.create(:product, title: "#{brand_name} Steam Generator")
#   product_photo     = FactoryGirl.create(:photo, file: File.new("#{Rails.root}/spec/support/images/#{brand_name.downcase}-steam-generator.jpg") )
#   brand.photos      << brand_photo
#   product.photos    << product_photo
#   brand.products    << product
#   product.features  << Feature.all
# end

