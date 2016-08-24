class Article < ActiveRecord::Base

  validates_presence_of :title, :body

  has_and_belongs_to_many :photos

  def self.find_by_name(name)
    find_by(title: name)
  end

end
