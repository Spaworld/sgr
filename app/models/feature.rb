class Feature < ActiveRecord::Base

  validates_presence_of :name, :description

  has_and_belongs_to_many :photos

  has_many :product_features
  has_many :products, through: :product_features
  has_many :ratings, through: :product_features

end
