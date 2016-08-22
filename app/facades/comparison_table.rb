class ComparisonTable

  def brand_names
    Brand.all.map(&:name)
  end

  def features
    Feature.all
  end

  def products
    Brand.all.map(&:products).map(&:ids)
  end

  def header_brand_image(brand_name)
    Brand.find_by(name: brand_name).products.first.photos.first.file(:thumb)
  end

end
