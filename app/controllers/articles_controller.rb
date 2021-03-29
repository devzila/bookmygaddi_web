class ArticlesController < ApplicationController
  before_action :set_article

  def show

  end

  private

  def set_article
    @article = Content.find_by(slug: params[:id])
  end
end