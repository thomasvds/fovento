class VolunteerMailer < ApplicationMailer

  def motivate(candidacy)
    @candidacy = candidacy
    @volunteer = candidacy.volunteer
    @mission = candidacy.mission

    mail(to: @volunteer.email, subject: 'Tu hésites à te lancer?')
  end

  def transfer(candidacy)
    @candidacy = candidacy
    @mission = candidacy.mission
    @volunteer = candidacy.volunteer
    @nonprofit_profile = @mission.nonprofit_profile

    mail(to: @nonprofit_profile.email , subject: 'Fovento: proposition de bénévole')
  end

  def rejected(candidacy)
    @volunteer = candidacy.volunteer
    @mission = candidacy.mission

    mail(to: @volunteer.email, subject: 'Ta candidature Fovento')
  end

  def accepted(candidacy)
    @volunteer = candidacy.volunteer
    @mission = candidacy.mission

    mail(to: @volunteer.email, subject: 'Ta candidature Fovento: congrats!')
  end

  def closing(mission)
    @volunteer = mission.volunteer
    @hours = mission.logbook.hours_worked
    @mission = mission
    @nonprofit = mission.nonprofit_profile

    mail(to: @nonprofit.email, subject: 'Fovento: Mission accomplie!')
  end

end
