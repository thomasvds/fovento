class PagesController < ApplicationController
  before_action :authenticate_volunteer!, only: [:dashboard]

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

    if @volunteer.ambassador
      @draft_missions = Mission.where("status = ?", "0_draft")
      @pending_candidacies = Candidacy.where(:status => ["pending moderation", "pending confirmation"])
      @browses = Candidacy.where(:status => ["browsing"])
    end
  end

  private

  def set_volunteer
    @volunteer = current_volunteer
  end
end
