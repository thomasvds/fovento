class CandidaciesController < ApplicationController

  before_action :set_candidacy, only: [:show, :udpate, :edit, :destroy]
  before_action :find_mission, only: [:create, :index, :show]
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

  def edit
  end

  def update
  end

  def destroy
    @candidacy.destroy
    redirect_to dashboard_path
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
