class Rating < ActiveRecord::Base

  validates_presence_of :stars

  has_and_belongs_to_many :brands

  has_many :product_features
  has_many :features, through: :product_features

end
