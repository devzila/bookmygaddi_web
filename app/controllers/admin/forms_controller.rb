class Admin::FormsController < Admin::BaseController
    skip_before_action :verify_authenticity_token
    before_action :set_forms, only: %i(show update edit destroy)

    def index
        @forms = Form.all
    end

    def new
        @form = Form.new
    end

    def create
        @form = Form.new(forms_params)
        @form.save
        redirect_to admin_forms_path
    end

    def show
        
    end

    def edit

    end

    def update
        @form.update(forms_params)
        flash[:notice] = "form was updated successfully."
        redirect_to admin_forms_path
    end

    def destroy
        @form.delete
        flash[:notice] = "form was deleted successfully."
        redirect_to admin_forms_path
    end

    private

    def set_forms
        @form = Form.find(params[:id])
    end

    def forms_params
        params.require(:form).permit(
            :slug,
            :content
            )   
    end

end