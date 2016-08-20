class Brand < ActiveRecord::Base

  validates_presence_of :name, :description

  has_and_belongs_to_many :products
  has_and_belongs_to_many :photos

end
