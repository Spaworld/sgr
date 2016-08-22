class Photo < ActiveRecord::Base

  has_and_belongs_to_many :brands
  has_and_belongs_to_many :features
  has_and_belongs_to_many :products

  has_attached_file :file, styles: { lage: '1000x1000>', medium: "300x300>", thumb: "100x100>", micro: "25x25>" }, default_url: "/images/:style/missing.png"
  validates_attachment_file_name :file, matches: [/png\z/, /jpe?g\z/, /svg\z/]
  validates_attachment_presence :file

end
