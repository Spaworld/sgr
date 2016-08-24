class Navbar

  def about_page
    Article.find_by_name('About').id
  end

end
