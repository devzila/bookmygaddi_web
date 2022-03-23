class ApplicationController < ActionController::Base
  helper_method :get_page_meta

  def get_page_meta
     {
        title: 'Book local and outstation cabs.',
        desc: 'BookMyGaddi provides online local and outstation cabs.Book cheap,budget and luxury cars at great prices on best car booking site.',
        image: 'http://bookmygaddi.in/img/rooftop.jpg'
     }
  end

end
