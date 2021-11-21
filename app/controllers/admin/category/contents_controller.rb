class Admin::Category::ContentsController < Admin::BaseController
  before_action :set_category
  before_action :set_content, only: [:show, :edit, :update]
  def index
    @sub_categories = @category.articles
  end

  def show

  end

  def new
    @content = @category.articles.new
    @available_contents = Content.all
    @selected_content = nil
  end

  def create
    @content = @category.articles.new(content_params)
    if @content.save
      flash[:notice] = "Article created successfully"
      redirect_to admin_content_contents_path
    else
      flash[:alert] = @content.errors.full_messages
      @available_contents = Content.all
      @selected_content = content_params[:related_content_ids]
      render 'new'
    end



  end

  def edit
    @available_contents = Content.where.not(id: @content.id)
    @selected_content = @content.content_relationships.pluck(:related_content_id)
  end


  def update
    @content.content_relationships.destroy if content_params[:related_content_ids].present?

    if @content.update(content_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to admin_content_contents_path
    else
      flash[:alert] = @content.errors.full_messages
      @available_contents = Content.all
      @selected_content = content_params[:related_content_ids]
      render 'edit'
    end
  end

  private


  def content_params
    params.require(:content).permit(
        :title,
        :slug,
        :excerpt,
        :content,
        :ui_type,
        :hover_button_type,
        :menu_visibility,
        :thumbmedia_url,
        :custom_meta_tag,
        :meta_tag_description,
        :tag_list,
        related_content_ids: []
    )
  end

  def set_category
    @category = Content.find(params[:content_id])
  end

  def set_content
    @content = @category.articles.find(params[:id])
  end

end
