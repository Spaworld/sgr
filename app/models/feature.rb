class Feature < ActiveRecord::Base

  attr_accessor :product_feature

  validates_presence_of :name, :description

  has_and_belongs_to_many :photos

  has_many :product_features
  has_many :products, through: :product_features

  delegate :rating, to: :product_feature

  def product_feature
    ProductFeature.find_by(feature_id: id)
  end

end
