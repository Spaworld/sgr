class Rating < ActiveRecord::Base

  validates_presence_of :stars

  has_and_belongs_to_many :brands

end
