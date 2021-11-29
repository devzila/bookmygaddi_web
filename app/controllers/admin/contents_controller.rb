class Admin::ContentsController < Admin::BaseController
  before_action :set_category, only: %i(show edit update)
  def index
    @categories = Content.categories.order(:title)
  end

  def show

  end

  def new
    @content = Content.new
    @available_contents = Content.all
    @selected_content = nil
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      flash[:notice] = "Article created successfully"
      redirect_to admin_contents_path
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
      redirect_to admin_contents_path
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
        :active,
        related_content_ids: []
    )
  end

  def set_category
    @content = Content.find(params[:id])
  end


end
