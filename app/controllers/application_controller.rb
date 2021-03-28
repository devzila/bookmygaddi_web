class ApplicationController < ActionController::Base
  before_action :set_nav_items


  def set_nav_items
    @categories = Content.categories.navable
  end
end
