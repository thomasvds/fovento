class VolunteerMailer < ApplicationMailer

  def transfer(candidacy)
    @candidacy = candidacy
    @mission = candidacy.mission
    @volunteer = candidacy.volunteer
    @nonprofit_profile = @mission.nonprofit_profile

    mail(to: @nonprofit_profile.email , subject: 'Fovento: proposition de bénévole')
  end

  def rejected(volunteer)
    @volunteer = volunteer

    mail(to: @volunteer.email, subject: 'Too bad!')
  end

  def accepted(volunteer)
    @volunteer = volunteer

    mail(to: @volunteer.email, subject: 'Congrats!')
  end
end
