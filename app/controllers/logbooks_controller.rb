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
    params.require(:logbook).permit(:objectives_understood,
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
     )
  end
end
