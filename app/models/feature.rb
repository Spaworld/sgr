class Feature < ActiveRecord::Base

  validates_presence_of :name, :description

  has_and_belongs_to_many :photos

  has_many :product_features
  has_many :products, through: :product_features

  def rating_by_product(product_id)
    product_feature(product_id).nil? ? 0 : product_feature(product_id).rating
  end

  def description_by_product(product_id)
    product_feature(product_id).description
  end

  def update_rating(product_id, val)
    product_feature(product_id).update_attributes!(rating: val)
  end

  def update_description(product_id, text)
    product_feature(product_id).update_attributes(description: text)
  end

  def products_ratings(product_ids)
    product_ids.map do |product_id|
      rating_by_product(product_id)
    end
  end

  private

  def product_feature(product_id)
    ProductFeature.find_by(
      feature_id: id,
      product_id: product_id
    )
  end

end
