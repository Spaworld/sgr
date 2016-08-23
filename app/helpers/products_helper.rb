module ProductsHelper

  def total_rating_colorizer(score)
    if score < 3
      'danger'
    elsif score < 4
      'warning'
    else
      'success'
    end
  end

end
