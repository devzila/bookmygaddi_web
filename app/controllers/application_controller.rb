class ApplicationController < ActionController::Base
  before_action :set_nav_items


  def set_nav_items
    @categories = Content.categories.navable
  end

  def after_sign_out_path_for(resource_or_scope)
    '/admin/contents'
  end

end
