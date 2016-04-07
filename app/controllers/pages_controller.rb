class PagesController < ApplicationController
  before_action :set_volunteer, only: [:dashboard]

  def home_volunteers
  end

  def home_nonprofits
  end

  def how_it_works
  end

  def community_and_impact
  end

  def missions_toolkit
  end

  def terms_and_conditions
  end

  def contact
  end

  def dashboard
    @candidacies = Candidacy.where("volunteer_id = ?", @volunteer.id)
    @missions = Mission.where("volunteer_id = ?", @volunteer.id)
  end

  private

  def set_volunteer
    @volunteer = current_volunteer
  end
end
