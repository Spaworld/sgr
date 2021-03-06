class StaticController < ApplicationController

  def index
    @comparison_table = ComparisonTable.new
    @top_products = Product.select { |x| x.total_rating }.sort
  end

  def about
    @content = Article.find_by_name('About')
  end

end
