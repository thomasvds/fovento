require 'net/http'
require 'uri'
require 'json'

class SlackCandidacyNotifierJob < ActiveJob::Base
  queue_as :default

  def perform(candidacy)
    volunteer = candidacy.volunteer
    first_name = volunteer.first_name
    last_name = volunteer.last_name
    mission = candidacy.mission.title
    association = candidacy.mission.nonprofit_profile.name
    payload = {
      username:         "Nouvelle candidature!",
      text:             first_name + " " + last_name + " vient de postuler pour la mission: \"" + mission +"\", pour l'association " + association +". TODO: modérer la candidature."
    }
    uri = URI.parse("https://hooks.slack.com/services/#{ENV['SLACK_EMAIL_SIGNUP_TOKEN']}")
    Net::HTTP.post_form(uri, :payload => JSON.generate(payload))
  end
end
