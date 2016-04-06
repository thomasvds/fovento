class Candidacy < ActiveRecord::Base
  belongs_to :mission
  belongs_to :volunteer
  delegate :nonprofit_profile, to: :mission
  validates :motivation_for_mission, presence: true
  validates :motivation_for_skills, presence: true
  validates :engagement_practicalities, presence: true

  def confirm!
    p "***************"
    #Only allow confirmation if not rejected or confirmed
    if @status == "rejected" || @status == "confirmed"
      return false
    else
      #Set all candidacies of the mission to rejected by default
      p mission
      mission.candidacies.each do |candidacy|
        candidacy.udpate(status: "rejected")
      end
      #Retrieve the current candidacy and confirm it
      @status = "confirmed"
      #Update the mission with chosen volunteer and staffed status
      @mission.update(status: "staffed", volunteer: @volunteer)
      #Mail all volunteers that had a candidacy on the mssion
      @mission.candidacies.each do |candidacy|
        case candidacy.status
        when "rejected"
          VolunteerMailer.rejected(candidacy.volunteer).deliver_now
        when "confirmed"
          VolunteerMailer.accepted(candidacy.volunteer).deliver_now
        end
      end
    end
    self.save!
  end
end
