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
      @category.new({
        title: params[:title],
        slug: params[:slug]
      })

      redirect_to admin_category_path(@category.Content)
  end

  def edit

  end

  def update
    @category.update({
      title: params[:title],
      slug: params[:slug]
    })

    redirect_to admin_category_path
  end


  private

  def set_category
    @category = Content.find(params[:id])
  end

end
