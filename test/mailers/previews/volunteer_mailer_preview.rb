class VolunteerMailerPreview < ActionMailer::Preview
  def accepted
    volunteer = Volunteer.first
    VolunteerMailer.accepted(volunteer)
  end
end
