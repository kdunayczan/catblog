class PagesController < ApplicationController

  def home
  end

  def about
  end

  def contact
  end

  def blogs
  	@users = User.all
  end

end
