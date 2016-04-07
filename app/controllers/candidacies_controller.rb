class CandidaciesController < ApplicationController
  before_action :authenticate_volunteer!

  before_action :set_candidacy, only: [:confirm, :show, :udpate, :edit, :destroy]
  before_action :find_mission, only: [:confirm, :create, :index, :show]
  before_action :find_volunteer, only: [:create, :index, :show]

  def index
    @candidacies = Candidacy.where("mission_id = ?", params[:mission_id])
  end

  def show
  end

  def new
    @candidacy = Candidacy.new
  end

  def create
    @candidacy = Candidacy.new(candidacy_params)
    @candidacy.mission = @mission
    @candidacy.volunteer = @volunteer

    respond_to do |format|
      if @candidacy.save
        format.html { redirect_to dashboard_path, notice: "Merci pour ta candidature! Elle va être partagée avec l'association." }
        format.json { render :show, status: :created }
      else
        format.html { redirect_to mission_path(@mission), alert: 'Erreur: la candidature n\'a pas été enregistrée.'}
        format.json { render json: @candidacy.errors, status: :unprocessable_entity }
      end
    end
  end

  # NOTE: HIGHLY DEPENDENT ON ACTIVERECORD LINKS TO DB, DO NOT CHANGE REFERENCES!!!
  def confirm
    #Only allow confirmation if not rejected or confirmed
    if @candidacy.status == "rejected" || @candidacy.status == "confirmed"
      return false
    else
      #Set all candidacies of the mission to rejected by default
      @candidacy.mission.candidacies.each do |candidacy|
        candidacy.update(status: "rejected")
      end
      #Retrieve the current candidacy and confirm it, undoing rejection
      @candidacy.update(status: "confirmed")
      #Update the mission with chosen volunteer and staffed status
      @candidacy.mission.update(status: "20_staffed", volunteer: @candidacy.volunteer, staffed_at: Time.now)
      #Mail all volunteers that had a candidacy on the mission
      @mission.candidacies.each do |candidacy|
        case candidacy.status
        when "rejected"
          VolunteerMailer.rejected(candidacy.volunteer).deliver_now
        when "confirmed"
          VolunteerMailer.accepted(candidacy.volunteer).deliver_now
        end
      end
    end
    redirect_to dashboard_path
  end

  def destroy
    respond_to do |format|
      if @candidacy.destroy
        format.html { redirect_to dashboard_path, notice: "La candidature a été supprimée." }
      else
        format.html { redirect_to dashboard_path, alert: 'Erreur: la candidature n\'a pas été supprimée.'}
      end
    end
  end

  private

  def set_candidacy
    @candidacy = Candidacy.find(params[:id])
  end

  def find_mission
    @mission = Mission.find(params[:mission_id])
  end

  def find_volunteer
    @volunteer = current_volunteer
  end

  def candidacy_params
    params.require(:candidacy).permit(:motivation_for_skills, :motivation_for_mission, :engagement_practicalities)
  end
end
