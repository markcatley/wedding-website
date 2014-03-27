class MessagesController < ApplicationController
  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)

    @message.save!

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Thank you for your message.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:names, :email, :mobile_number, :wedding_response, :bbq_response, :message)
    end
end
