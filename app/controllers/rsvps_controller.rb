class RsvpsController < ApplicationController
  before_action :set_rsvp, only: [:show, :edit, :update, :destroy]

  # POST /rsvps
  # POST /rsvps.json
  def create
    @rsvp = Rsvp.new(rsvp_params)
    
    if params['coming']
      @rsvp.set_coming
    else
      @rsvp.set_not_coming
    end

    @rsvp.save!

    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Thank you for your RSVP.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rsvp
      @rsvp = Rsvp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rsvp_params
      params.require(:rsvp).permit(:names, :email, :message)
    end
end
