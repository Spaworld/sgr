class ProductFeature < ActiveRecord::Base

  belongs_to :product
  belongs_to :feature
  belongs_to :rating

end
