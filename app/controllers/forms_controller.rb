class FormsController < ApplicationController
    before_action :set_forms, only: %i(show update destroy)
    skip_before_action :verify_authenticity_token

    def index
        @forms = Form.all
        render json: @forms
    end

    def show
        render json: @form
    end

    def create
        @form = Form.create(forms_params)
        render json: @form
    end

    def update
        @form.update(forms_params)
        render json: @form
    end

    def destroy
        @form.delete
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