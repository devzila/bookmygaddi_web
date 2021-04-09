class Admin::Category::SubCategoriesController < Admin::BaseController
  before_action :set_category

  def index
    @sub_categories = @category.articles
  end

  private
  def set_category
    @category = Content.find(params[:category_id])
  end
end
