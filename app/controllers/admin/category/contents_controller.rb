class Admin::Category::ContentsController < Admin::BaseController
  before_action :set_category

  def index
    @sub_categories = @category.articles
  end

  def new
    @content = @category.articles.new
  end

  def create
    @content = @category.articles.new(params.require(:content).permit(:title, :slug, :excerpt, :content, :ui_type, :hover_button_type, :menu_visibility, :thumbmedia_url))
    @content.save
    redirect_to admin_content_contents_path

  end


  def edit
    @content = @category.articles.find(params[:id])
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
    @category = Content.find(params[:content_id])
  end
end
