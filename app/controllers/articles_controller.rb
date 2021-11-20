class ArticlesController < ApplicationController
  before_action :set_article

  def show

  end

  def get_page_meta
    {
        title: @article.title,
        desc: @article.excerpt,
        image: "http://bookmygaddin.in#{@article.thumbmedia_url}"
    }
  end

  private

  def set_article
    @article = Content.find_by(slug: params[:id])
    @content = @article.content
    @content = @content.gsub('{{TITLE}}', @article.title)

    # Replace forms
    Form.all.each do |form|
      macro_name = '{{FORM-' + form.slug.upcase + '}}'
      @content = @content.gsub(macro_name, form.content)
    end
  end
end