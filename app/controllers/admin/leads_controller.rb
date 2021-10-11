class Admin::LeadsController < Admin::BaseController
    skip_before_action :verify_authenticity_token
    before_action :set_leads, only: %i(show update)

    def index
        @leads = Lead.all
    end

    def show
        
    end

    def update
        @lead.update(leads_params)
        flash[:notice] = "Lead was updated successfully."
    end

    def delete
        @lead.destroy
        flash[:notice] = "Lead was deleted successfully."
    end

    private

    def set_leads
        @lead = Lead.find(params[:id])
    end

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