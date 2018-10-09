class PagesController < ApplicationController
  
  def homepage
    render('homepage')
  end

  def about
    render('about')
  end
end
