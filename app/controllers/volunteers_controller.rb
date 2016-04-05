class VolunteersController < ApplicationController
  before_action :set_volunteer

  def profile
  end

  def dashboard
    @candidacies = Candidacy.where("volunteer_id = ?", @volunteer.id)
    @missions = Mission.where("volunteer_id = ?", @volunteer.id)
    @logbook = Logbook.new
  end

  private

  def set_volunteer
    @volunteer = current_volunteer
  end


end
