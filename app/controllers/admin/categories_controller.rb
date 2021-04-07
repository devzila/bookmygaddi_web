class Admin::CategoriesController < ApplicationController

  def index
    @categories = Content.categories
  end
end
