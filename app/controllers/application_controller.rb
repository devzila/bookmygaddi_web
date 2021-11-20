class ApplicationController < ActionController::Base
  before_action :set_nav_items
  helper_method :get_page_meta

  def get_page_meta
     {
        title: 'Book local and outstation cabs.',
        desc: 'BookMyGaddi provides online local and outstation cabs.Book cheap,budget and luxury cars at great prices on best car booking site.',
        image: 'http://bookmygaddi.in/img/rooftop.jpg'
     }
  end


  def set_nav_items
    @categories = Content.categories.navable
  end

  def after_sign_out_path_for(resource_or_scope)
    '/admin/contents'
  end

end
