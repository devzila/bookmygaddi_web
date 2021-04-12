class Admin::Category::SubCategoriesController < Admin::BaseController
  before_action :set_category

  def index
    @sub_categories = @category.articles
  end


  def edit

  end

  def update
    @category.update({
      title: params[:title],
      slug: params[:slug]
    })

    redirect_to admin_category_sub_categories_path
  end


  private
  def set_category
    @category = Content.find(params[:category_id])
  end
end
