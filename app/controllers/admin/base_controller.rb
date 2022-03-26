class Admin::BaseController < ApplicationController
  before_action :authenticate_admin!
  layout "admin/application"

  skip_forgery_protection



  def after_sign_out_path_for(resource_or_scope)
    '/admin/contents'
  end

end
