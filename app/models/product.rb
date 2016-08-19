class Product < ActiveRecord::Base

  attr_reader :features

  validates_presence_of :title, :description

  has_and_belongs_to_many :brands
  has_and_belongs_to_many :features
  has_and_belongs_to_many :photos

  after_destroy { photos.clear }

  def features
    Feature.all
  end

end
