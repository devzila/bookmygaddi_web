class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: %i(show edit crea)
  def index
    @categories = Content.categories
  end

  def show


  end

  def new

  end

  def create
    @category = Content.new(params.require(:categories).permit(:title, :slug))
    @category.save
    redirect_to admin_categories_path
  end

  def edit

  end


  def update
  @category = Content.find(params[:id])
    if @category.update(params.require(:content).permit(:title, :slug))
      flash[:notice] = "Article was updated successfully."
      redirect_to admin_categories_path

    end
  end

  private

  def set_category
    @category = Content.find(params[:id])
  end


end
