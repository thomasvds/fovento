class CandidaciesController < ApplicationController

  before_action :set_candidacy, only: [:show, :edit, :update]
  before_action :find_mission, only: [:new, :create, :index, :show]
  before_action :find_volunteer, only: [:new, :create, :index, :show]

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
        format.html { redirect_to mission_path(@mission), notice: 'Merci pour ta candidature! Elle va être partagée avec l\'association.' }
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
  end

  def set_candidacy
    @candidacy = Candidacy.find(candidacy_params)
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
