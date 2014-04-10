class RequestForTransportsController < ApplicationController

  def create
    @rsvp = RequestForTransport.new(rsvp_params)

    @rsvp.save!

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Thank you for your request for transport.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def rsvp_params
      params.require(:request_for_transport).permit(:names, :address)
    end
end
