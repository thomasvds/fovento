class MissionsController < ApplicationController
  before_action :authenticate_volunteer!, except: [:index, :show]
  before_action :set_mission, except: [:index, :new, :create]

  #====== READ METHODS ======
  def index

    if params[:skills].nil? || params[:skills][:list].first == ""
      @missions = Mission.where.not(status: "0_draft").order(:status)
    else
      @skills_to_search = params[:skills][:list].split(",")
      @missions = []
      @skills_to_search.each do |s|
        results = Mission.where("skills ILIKE '%#{s}%'").where.not(status: "0_draft")
        results.each do |r|
          @missions << r
        end
      end
      @missions = @missions.sort_by(&:status).uniq
    end

    skills_available = []
    Mission.all.each do |m|
      skills = m.skills.split(",")
      skills.each do |s|
        s.strip!
        skills_available << s
      end
    end
    @skills_available = skills_available.sort.uniq!
  end

  def show
    if @mission.status == "0_draft"
      redirect_to missions_path unless volunteer_signed_in? && current_volunteer.ambassador
    end

    @skills = @mission.skills.split(',')

    if volunteer_signed_in?
      @candidacy = current_volunteer.candidacies.where(mission_id: @mission.id).first
      if !@candidacy.nil?
        @candidacy.plus_browse_count!
        if @candidacy.browse_count == 3
          VolunteerMailer.motivate(@candidacy).deliver_later
          SlackMotivationNotifierJob.perform_later(@candidacy)
        end
      else
        @candidacy = Candidacy.create(volunteer: current_volunteer, mission: @mission)
      end
    end
  end

  #====== PRE-PUBLICATION METHODS ======
  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.status = "0_draft"
    @mission.author = current_volunteer.first_name
    if @mission.picture.include?("dropbox")
      # Direct public dropbox link is actually just a preview, and needs to be modified to actual content
      @mission.picture.gsub!('www.dropbox.com','dl.dropboxusercontent.com')
    end
    respond_to do |format|
      if @mission.save
        format.html { redirect_to dashboard_path, notice: "Draft de mission enregistré." }
      else
        format.html { redirect_to dashboard_path, alert: "Draft non enregistré."}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @mission.update(mission_params)
        format.html { redirect_to dashboard_path, notice: "Le draft de mission a été mis à jour." }
      else
        format.html { redirect_to dashboard_path, alert: 'Erreur: le draft n\'a pas été mis à jour.'}
      end
    end
  end

  #====== LIFECYCLE METHODS ======
  def publish
    @mission.update(status: "10_open")

    respond_to do |format|
      format.html { redirect_to mission_path, notice: "Mission publiée!" }
    end
  end

  def begin
    if current_volunteer != @mission.volunteer
      respond_to do |format|
        format.html { redirect_to dashboard_path, alert: "Accès refusé." }
      end
    end
  end

  def start
    @mission.update(status: "30_started", started_at: Time.now)
    @mission.update(mission_params)

    SlackMissionStartNotifierJob.perform_later(@mission)

    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: "Démarrage confirmé! Merci pour ton engagement. La Team Fovento te souhaite une excellente mission!" }
    end
  end

  def finish
    if current_volunteer != @mission.volunteer
      respond_to do |format|
        format.html { redirect_to dashboard_path, alert: "Accès refusé." }
      end
    end
  end

  def accomplish
    @mission.update(status: "40_accomplished", closed_at: Time.now)
    @mission.update(mission_params)

    SlackMissionEndNotifierJob.perform_later(@mission)

    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: "Encore merci pour ton engagement!" }
    end
  end

  def stop
    if current_volunteer != @mission.volunteer
      respond_to do |format|
        format.html { redirect_to dashboard_path, alert: "Accès refusé." }
      end
    end
  end

  def interrupt
    @mission.update(status: "50_interrupted", closed_at: Time.now)
    @mission.update(mission_params)

    SlackMissionEndNotifierJob.perform_later(@mission)

    respond_to do |format|
      format.html { redirect_to dashboard_path, alert: "Merci pour ton feedback. L'équipe Fovento te recontactera potentiellement pour en discuter." }
    end
  end

  def destroy
    respond_to do |format|
      if @mission.destroy
        format.html { redirect_to dashboard_path, notice: "Le draft de mission a été supprimé." }
      else
        format.html { redirect_to dashboard_path, alert: 'Erreur: le draft n\'a pas été supprimé.'}
      end
    end
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(
      :nonprofit_profile_id,
      :title,
      :full_title,
      :skills,
      :objectives,
      :outcomes,
      :impact,
      :suggested_duration,
      :suggested_start_date,
      :suggested_end_date,
      :suggested_format,
      :picture,
      logbook_attributes: [
        :id,
        :objectives_understood,
        :ways_of_working_defined,
        :starting_comments,
        :planned_end_date,
        :volunteer_testimonial,
        :nonprofit_testimonial,
        :testimonial_publishable,
        :nps,
        :hours_worked,
        :values_and_terms_accepted,
        :volunteer_feedback
      ]
    )
  end
end
