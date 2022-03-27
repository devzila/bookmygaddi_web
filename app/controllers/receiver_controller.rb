class ReceiverController < BaseController


  def new

  end

  def create
    lead = Lead.create(
            source: params[:source],
            phone_number: params[:phone_number],
            form_data: params,
            ip: '',
            device: ''
    )

    respond_to do |format|
      if lead.id.present?
        @message = "We will contect you shortly"
        format.html { render :new, status: :ok }
        format.json { render json: {message: @message,  status: :ok} }
      else
        @message = "Something went wrong"
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @message, status: :unprocessable_entity }
      end



    end
  end
end
