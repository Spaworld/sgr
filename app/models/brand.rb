class Brand < ActiveRecord::Base

  validates_presence_of :name, :description

  has_and_belongs_to_many :products
  has_and_belongs_to_many :photos

  def featured_product_image
    products.first.photos.first
  end

end
