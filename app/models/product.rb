class Product < ActiveRecord::Base

  validates_presence_of :title, :description

  has_and_belongs_to_many :brands
  has_and_belongs_to_many :features
  has_and_belongs_to_many :photos
  has_and_belongs_to_many :ratings

  # TODO: add before_destroy call_backs
  # (i.e.: before_destroy { features.clear } )

end
