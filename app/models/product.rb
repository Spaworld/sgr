class Product < ActiveRecord::Base

  validates_presence_of :title, :description

  has_and_belongs_to_many :brands
  has_and_belongs_to_many :photos

  has_many :product_features
  has_many :features, through: :product_features

  after_destroy { photos.clear }

end
