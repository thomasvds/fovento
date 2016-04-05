class MissionsController < ApplicationController
  before_action :set_mission, only: [:show, :edit, :update, :destroy]

  def index
    @missions = Mission.where.not(status: 'draft')
  end

  def show
    @skills = @mission.skills.split(',')
    @candidacy = Candidacy.new
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

  def set_mission
    @mission = Mission.find(params[:id])
  end
end
