class Mission < ActiveRecord::Base
  belongs_to :nonprofit_profile
  belongs_to :volunteer
  has_many :candidacies
  has_one :logbook, dependent: :destroy

  after_create :create_logbook

  accepts_nested_attributes_for :logbook

  def self.all_skills
    skills_available = []
    all.each do |m|
      skills = m.skills.split(",")
      skills.each do |s|
        s.strip!
        skills_available << s
      end
    end
    return skills_available.sort.uniq!
  end

  def self.all_publishable
    return all.where.not(status: "0_draft").order(:status)
  end

  def self.find_by_skill(skill)
    return all.where("skills ILIKE '%#{skill}%'").where.not(status: "0_draft")
  end

  # Returns an array of unique missions containing the skills, excluding
  # draft missions and sorting the missions by their status
  def self.find_by_skills(skills)
    missions = []
    skills.each do |s|
      results = find_by_skill(s)
      results.each do |r|
        missions << r
      end
    end
    return missions.sort_by(&:status).uniq
  end

  private

  def create_logbook
    self.logbook = Logbook.new
  end

end
