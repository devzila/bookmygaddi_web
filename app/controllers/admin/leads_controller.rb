class Admin::LeadsController < Admin::BaseController
    skip_before_action :verify_authenticity_token
    before_action :set_leads, only: %i(show update edit destroy)

    def index
        @leads = Lead.all
    end

    def new
        @lead = Lead.new
    end

    def create
        @lead = Lead.new(leads_params)
        @lead.save
        redirect_to admin_leads_path
    end

    def show
        
    end

    def edit

    end

    def update
        @lead.update(leads_params)
        flash[:notice] = "Lead was updated successfully."
        redirect_to admin_leads_path
    end

    def destroy
        @lead.delete
        flash[:notice] = "Lead was deleted successfully."
        redirect_to admin_leads_path
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