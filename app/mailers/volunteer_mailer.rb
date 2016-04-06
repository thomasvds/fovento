class VolunteerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.volunteer_mailer.accepted.subject
  #
  def accepted(volunteer)
    @greeting = "Hi"

    mail(to: volunteer.email, subject: 'Bravo!')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.volunteer_mailer.rejected.subject
  #
  def rejected(volunteer)
    @greeting = "Hi"

    mail(to: volunteer.email, subject: 'Too bad!')
  end
end
