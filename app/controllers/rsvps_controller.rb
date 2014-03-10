class RsvpsController < ApplicationController

  # POST /rsvps
  # POST /rsvps.json
  def create
    @rsvp = Rsvp.new(rsvp_params)

    @rsvp.save!

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Thank you for your RSVP.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def rsvp_params
      params.require(:rsvp).permit(:names, :email, :mobile_number, :wedding_response, :bbq_response, :message)
    end
end
