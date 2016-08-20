class ProductFeature < ActiveRecord::Base

  validates_presence_of :rating
  validates :rating, inclusion: (1...5)

  belongs_to :product
  belongs_to :feature

end
