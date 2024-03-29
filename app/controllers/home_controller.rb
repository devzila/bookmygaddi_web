class HomeController < BaseController
  before_action :set_category, only: %i(show)

  def index
    @articles = Content.categories.active
  end


  def show
    @articles = @category.articles
  end

  def get_page_meta
    if params[:action] == 'show'
      {
          title: @category.title,
          desc: @category.excerpt,
          image: "http://bookmygaddin.in#{@category.thumbmedia_url}"
      }
    else
      super
    end

  end

  private

  def set_category
    @category = Content.categories.find_by(slug: params[:id])
  end
end