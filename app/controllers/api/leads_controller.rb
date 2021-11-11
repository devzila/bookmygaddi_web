class Api::LeadsController < ApplicationController 
	skip_before_action :verify_authenticity_token

	def create 
		@lead = Lead.new(leads_params)
		render json: @lead
	end 


	private 

	def leads_params 
		params.require(:lead).permit(
			:name,
			:email,
			:article,
			:form_name,
			:comments,
			:status, 
			:source, 
			:phone_number, 
			:form_data,
			:ip,
			:device
			)
	end

end 
