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
      @all_missions = Mission.all
      @months = (Date.parse("01/05/2016")..Date.today).map {|d| d.strftime '%b %Y' }.uniq
      @published_history = []
      @staffed_history = []
      @months.each do |month|
        start_date = Date.parse("1 #{month}")
        end_date = Date.new(start_date.year, start_date.month, -1)
        month_dates = start_date..end_date
        @published_history << Mission.where(published_at: month_dates).count
        # User.where(["DAY(created_at) = ? AND MONTH(created_at) = ?", date.day, date.month])
        p "********"
        p Mission.where(staffed_at: month_dates).count
        p "********"
        @staffed_history << Mission.where(staffed_at: month_dates).count
      end
    end
  end

  def ambassadors
  end

  private

  def set_volunteer
    @volunteer = current_volunteer
  end
end
