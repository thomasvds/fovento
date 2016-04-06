class Candidacy < ActiveRecord::Base
  belongs_to :mission
  belongs_to :volunteer
  delegate :nonprofit_profile, to: :mission
  validates :motivation_for_mission, presence: true
  validates :motivation_for_skills, presence: true
  validates :engagement_practicalities, presence: true
end
