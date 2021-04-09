class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: %i(show edit)
  def index
    @categories = Content.categories
  end

  def show


  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end


  private

  def set_category
    @category = Content.find(params[:id])
  end

end
