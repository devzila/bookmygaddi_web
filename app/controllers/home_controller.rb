class HomeController < ApplicationController

  def index
    @articles = Content.categories
  end
end