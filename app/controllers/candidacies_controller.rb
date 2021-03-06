class CandidaciesController < ApplicationController
  before_action :authenticate_volunteer!, except: [:index, :confirm]

  before_action :set_candidacy, except: [:index]
  before_action :find_mission, only: [:confirm, :show]
  before_action :find_volunteer, only: [:show]

  def index
    if volunteer_signed_in? && !current_volunteer.ambassador
      redirect_to root_path
    end
    @candidacies = Candidacy.where(mission_id: params[:mission_id], status: ["pending confirmation","confirmed"] )
  end

  def show
    if (current_volunteer != @candidacy.volunteer && !current_volunteer.ambassador)
      respond_to do |format|
        format.html { redirect_to missions_path, alert: "Accès refusé." }
      end
    end
  end

  def edit
    if current_volunteer != @candidacy.volunteer
      respond_to do |format|
        format.html { redirect_to missions_path, alert: "Accès refusé." }
      end
    end
  end

  # This method is used when the volunteer actually applies for a
  # mission. The candidacy is indeed first created when the volunteer
  # browses for the first time on the show page of the mission,
  # so when he applies it's actually an update of an existing candidacy
  def update
    respond_to do |format|
      if @candidacy.update(candidacy_params)
        @candidacy.update(status: "pending moderation", written_at: Time.now)
        format.html { redirect_to dashboard_path, notice: "Merci pour ta candidature! Elle va être partagée avec l'association." }
        format.json { render :show, status: :created }
      else
        format.html { redirect_to mission_path(@mission), alert: 'Erreur: la candidature n\'a pas été enregistrée.'}
        format.json { render json: @candidacy.errors, status: :unprocessable_entity }
      end
    end
    SlackCandidacyNotifierJob.perform_later(@candidacy)
  end

  def transfer
    VolunteerMailer.transfer(@candidacy).deliver_later
    @candidacy.update(status: "pending confirmation", transferred_at: Time.now)
    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: "La candidature a été envoyée à l'association." }
    end
  end


  # NOTE: HIGHLY DEPENDENT ON ACTIVERECORD LINKS TO DB, DO NOT CHANGE REFERENCES!!!
  def confirm
    #Only allow confirmation if not rejected or confirmed
    if @candidacy.status == "rejected" || @candidacy.status == "confirmed"
      redirect_to dashboard_path
    else
      #Set all candidacies of the mission to rejected by default
      @candidacy.mission.candidacies.each do |candidacy|
        #Don't forget to skip candidacies that are just browsing!
        if candidacy.status != "browsing"
          candidacy.update(status: "rejected", decided_at: Date.today)
        end
      end
      #Retrieve the current candidacy and confirm it, undoing rejection
      @candidacy.update(status: "confirmed")
      #Update the mission with chosen volunteer and staffed status
      @candidacy.mission.update(status: "20_staffed", volunteer: @candidacy.volunteer, staffed_at: Date.today)
      #Mail all volunteers that had a written candidacy on the mission
      @mission.candidacies.each do |candidacy|
        case candidacy.status
        when "rejected"
          VolunteerMailer.rejected(candidacy).deliver_later
        when "confirmed"
          VolunteerMailer.accepted(candidacy).deliver_later
        end
      end
    end

    SlackMissionStaffNotifierJob.perform_later(@candidacy.mission)

    respond_to do |format|
      if volunteer_signed_in?
        format.html { redirect_to dashboard_path, notice: "La candidature a été acceptée." }
      else
        # FOR NONPROFITS DIRECTED ON THE CONFIRM PAGE VIA MAIL
        format.html { redirect_to root_path, notice: "Candidature acceptée, merci! Les bénévoles ont été informés par mail."}
      end
    end
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
    params.require(:candidacy).permit(
      :motivation_for_skills,
      :motivation_for_mission,
      :engagement_practicalities,
      volunteer_attributes: [
        :id,
        :phone_number
      ]
      )
  end
end
