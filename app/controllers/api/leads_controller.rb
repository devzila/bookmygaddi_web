class Api::LeadsController < ApplicationController 
	skip_before_action :verify_authenticity_token

	def create 
		lead = Lead.new
		lead.email = params[:email] if params[:email].present?
		lead.form_name = params[:form_name] if params[:form_name].present?
		lead.article = request.referer
		lead.form_data = params
		lead.save

		render json: lead, status: 200
	end

end 
