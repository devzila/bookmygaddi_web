class Admin::ContentsController < Admin::BaseController
  before_action :set_category, only: %i(show edit update)
  def index
    @contents = Content.categories
  end

  def show

  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(params.require(:content).permit(:title, :slug, :excerpt, :content, :ui_type, :hover_button_type, :menu_visibility, :thumbmedia_url, :custom_meta_tag, :meta_tag_description))
    @content.save
    redirect_to admin_contents_path  
  end

  def edit

  end


  def update
    if @content.update(params.require(:content).permit(:title, :slug, :excerpt, :content, :ui_type, :hover_button_type, :menu_visibility, :thumbmedia_url, :custom_meta_tag, :meta_tag_description))
      flash[:notice] = "Article was updated successfully."
      redirect_to admin_contents_path

    end
  end

  private

  def set_category
    @content = Content.find(params[:id])
  end


end
