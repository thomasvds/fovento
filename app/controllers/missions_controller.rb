class MissionsController < ApplicationController
  before_action :authenticate_volunteer!, except: [:index, :show]
  before_action :set_mission, except: [:index, :new]

  def index
    q = Quote.count
    @quote = Quote.offset(rand(q)).first
    @missions = Mission.where.not(status: "0_draft").order(:status)
  end

  def show
    @skills = @mission.skills.split(',')
    @candidacy = Candidacy.new
  end

  def start
    @mission.update(status: "30_started")
    @mission.update(mission_params)

    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: "Démarrage confirmé! Merci pour ton engagement. Toute l'équipe Fovento te souhaite une excellente mission!" }
    end
  end

  def accomplish
    @mission.update(status: "40_accomplished")
    @mission.update(mission_params)

    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: "Encore merci pour ton engagement!" }
    end
  end

  def interrupt
    @mission.update(status: "50_interrupted")
    @mission.update(mission_params)

    respond_to do |format|
      format.html { redirect_to dashboard_path, alert: "Merci pour ton feedback. L'équipe Fovento te recontactera potentiellement pour en discuter." }
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(
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
