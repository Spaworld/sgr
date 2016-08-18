class Feature < ActiveRecord::Base

  validates_presence_of :name, :description

  has_and_belongs_to_many :photos
  has_and_belongs_to_many :products

end
