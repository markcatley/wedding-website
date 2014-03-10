class TransportOrganisationsController < ApplicationController

  # POST /rsvps
  # POST /rsvps.json
  def create
    @rsvp = TransportOrganisation.new(rsvp_params)

    @rsvp.save!

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Thank you for your request for transport.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def rsvp_params
      params.require(:rsvp).permit(:names, :address)
    end
end
