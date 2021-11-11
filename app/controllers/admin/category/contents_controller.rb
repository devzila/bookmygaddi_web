class Admin::Category::ContentsController < Admin::BaseController
  before_action :set_category

  def index
    @sub_categories = @category.articles
  end

  def show

  end

  def new
    @content = @category.articles.new
  end

  def create
    @content = @category.articles.new(params.require(:content).permit(:title, :slug, :excerpt, :content, :ui_type, :hover_button_type, :menu_visibility, :thumbmedia_url, :custom_meta_tag, :meta_tag_description))
    @content.save
    redirect_to admin_content_contents_path

  end


  def edit
    @content = @category.articles.find(params[:id])
  end

  def update
    if @category.update(params.require(:content).permit(:title, :slug, :excerpt, :content, :ui_type, :hover_button_type, :menu_visibility, :thumbmedia_url, :custom_meta_tag, :meta_tag_description))
      flash[:notice] = "Sub Category was updated successfully."
      redirect_to admin_content_contents_path
    end
  end

  private
  def set_category
    @category = Content.find(params[:content_id])
  end
end
