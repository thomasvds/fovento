class VolunteerMailer < ApplicationMailer

  def contact_from_site(name, mail, message)
    @name = name
    @mail = mail
    @message = message
    mail(to: "contact@fovento.be", subject: 'Nouveau message fovento.be!')
  end

  def notify(volunteer, mission)
    @volunteer = volunteer
    @mission = mission

    mail(to: @volunteer.email, subject: 'Une mission Fovento pour toi?')
  end

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
