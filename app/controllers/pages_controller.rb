class PagesController < ApplicationController
  before_action :authenticate_volunteer!, only: [:dashboard]

  before_action :set_volunteer, only: [:dashboard]

  def home_volunteers
    @volunteers = Volunteer.order("RANDOM()").first(12)
  end

  def home_nonprofits
    @nonprofits = NonprofitProfile.order("RANDOM()")
  end

  def how_it_works
  end

  def community_and_impact
  end

  def missions_toolkit
  end

  def terms_and_conditions
  end

  def values
  end

  def team
  end

  def dashboard
    @candidacies = Candidacy.where(volunteer: @volunteer, :status => ["pending moderation", "pending confirmation", "rejected", "confirmed"])
    @missions = Mission.where(volunteer: @volunteer)
    @skills_available = Mission.all_skills
    if @volunteer.ambassador
      @draft_missions = Mission.where(status: "0_draft")
      @pending_candidacies = Candidacy.where(:status => ["pending moderation", "pending confirmation"])
      # @browses = Candidacy.where(status: "browsing").where("browse_count > ?", 1).where.not()
      @browses = Candidacy.joins(:volunteer).where("candidacies.status = 'browsing' AND candidacies.browse_count > 1 AND volunteers.ambassador = false")
      @staffed_missions = Mission.where(status: "20_staffed")
      @started_missions = Mission.where(status: "30_started")
      @nonprofit_profiles = NonprofitProfile.all
    end
  end

  def ambassadors
  end

  private

  def set_volunteer
    @volunteer = current_volunteer
  end
end
