class ParticipantsController < ApplicationController
  before_action :load_participant, only: [:edit, :update]

  def index
    @presents = Participant.where(participate: true)
    @missing = Participant.where(participate: false)
    @tbc = Participant.where(participate: nil)
  end

  def edit
    @accomodations = Accomodation.where(participant_id:nil)
    @label = ""
  end

  def update
    @participant.update_attributes(participant_params)
    accomodation_ids = participant_params[:accomodation_ids]
    unless accomodation_ids.nil?
      accomodation_ids.each do |id|
        Accomodation.find(id).participant_id = @participant.id unless id = ""
      end
    end
    redirect_to root_path
  end

  private

  def load_participant
    @participant = Participant.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:name, :number, :participate, :sleepover, accomodation_ids: [])
  end
end
