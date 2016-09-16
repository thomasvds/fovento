require 'rails_helper'

describe Volunteer do
  before(:each) do
    @volunteer = Volunteer.new(id: 1)
  end


  describe "#new" do
    it "returns a Volunteer object" do
      expect(@volunteer).to be_a(Volunteer)
    end
  end

  describe "#skilled?" do
    it "returns false if no skills" do
      expect(@volunteer.skills)
    end
    it "returns false if doesn't have the skill" do
      skills = "Traduction,Word"
      @volunteer.skills = skills
      expect(@volunteer.skilled?("Excel")).to be(false)
    end
    it "returns true if does have the skill" do
      skills = "Traduction,Word"
      @volunteer.skills = skills
      expect(@volunteer.skilled?("Word")).to be(true)
    end
  end

  describe "#candidate?" do
    it "returns false if does not have any candidacies" do
      mission = Mission.create
      expect(@volunteer.candidate?(mission)).to be(false)
    end
    it "returns false if has candidacies but not for this mission" do
      mission = Mission.create
      other_mission = Mission.create
      candidacy = Candidacy.create(mission: other_mission, volunteer: @volunteer)
      expect(@volunteer.candidate?(mission)).to be(false)
    end
    it "returns false if has consulted the mission, but not applied" do
      mission = Mission.create
      candidacy = Candidacy.create(mission: mission, volunteer: @volunteer, status: "browsing")
      expect(@volunteer.candidate?(mission)).to be(false)
    end
    it "returns true if has applied, pending moderation" do
      mission = Mission.create
      candidacy = Candidacy.create(mission: mission, volunteer: @volunteer, status: "pending moderation")
      p @volunteer.candidacies.first
      expect(@volunteer.candidate?(mission)).to be(true)
    end
    it "returns true if has applied, pending confirmation" do
      mission = Mission.create
      candidacy = Candidacy.create(mission: mission, volunteer: @volunteer, status: "pending confirmation")
      expect(@volunteer.candidate?(mission)).to be(true)
    end
    it "returns true if has applied, confirmed" do
      mission = Mission.create
      candidacy = Candidacy.create(mission: mission, volunteer: @volunteer, status: "confirmed")
      expect(@volunteer.candidate?(mission)).to be(true)
    end
    it "returns true if has applied, rejected" do
      mission = Mission.create
      candidacy = Candidacy.create(mission: mission, volunteer: @volunteer, status: "rejected")
      expect(@volunteer.candidate?(mission)).to be(true)
    end
  end
end
