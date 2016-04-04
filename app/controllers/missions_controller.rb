class MissionsController < ApplicationController
  before_action :set_mission, only: [:show, :edit, :update, :destroy]

  def index
    @missions = Mission.all
  end

  def show
    @skills = @mission.skills.split(',')
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
