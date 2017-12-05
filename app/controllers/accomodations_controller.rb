class AccomodationsController < ApplicationController
  before_action :load_accomodation, only: [:edit, :update]
  def index
  end

  def new
  end

  def edit
    @accomodations = Accomodation.all
  end

  def update
    print accomodation_params[:participant_id]
    @accomodation.participant_id = accomodation_params[:participant_id][1]
    @accomodation.save
    redirect_to root_path
  end

  private

  def load_accomodation
    @accomodation = Accomodation.find(params[:id])
  end

  def accomodation_params
    params.require(:accomodation).permit(participant_id: [])
  end
end
