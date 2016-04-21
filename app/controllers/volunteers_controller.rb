class VolunteersController < ApplicationController
  before_action :set_volunteer

  def update
    respond_to do |format|
      if @volunteer.update(volunteer_params)
        format.html { redirect_to dashboard_path, notice: "La liste de tes compétences a été mise à jour." }
      else
        format.html { redirect_to dashboard_path, alert: 'Erreur: la liste n\'a pas été mise à jour.'}
      end
    end
  end

  def set_volunteer
    @volunteer = Volunteer.find(params[:id])
  end

  def volunteer_params
    params.require(:volunteer).permit(:skills)
  end

end
