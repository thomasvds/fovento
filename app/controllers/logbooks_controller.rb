class LogbooksController < ApplicationController
  before_action :find_mission, only: [:create, :update]

  def create
    @logbook = Logbook.new(logbook_params)
    @logbook.mission = @mission

    respond_to do |format|
      if @logbook.save
        @mission.update(status: "started")
        format.html { redirect_to dashboard_path, notice: "Démarrage confirmé! Merci pour ton engagement. Toute l'équipe Fovento te souhaite une excellente mission!" }
        format.json { render :show, status: :created }
      else
        format.html { redirect_to mission_path(@mission), alert: 'Erreur: démarrage de mission non enregistré.'}
        format.json { render json: @logbook.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @mission.logbook.update(logbook_params)
    @mission.update(status: "accomplished")
    redirect_to dashboard_path, notice: "Encore merci pour ton engagement!"
  end

  private

  def find_mission
    @mission = Mission.find(params[:mission_id])
  end

  def logbook_params
    params.require(:logbook).permit(:all)
  end
end
