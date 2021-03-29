class HomeController < ApplicationController
  before_action :set_category, only: %i(show)

  def index
    @articles = Content.categories
  end


  def show
    @articles = @category.articles
  end

  private

  def set_category
    @category = Content.categories.find_by(slug: params[:id])
  end
end