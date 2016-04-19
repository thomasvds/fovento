require 'net/http'
require 'uri'
require 'json'

class SlackMotivationNotifierJob < ActiveJob::Base
  queue_as :default

  def perform(candidacy)
    payload = {
      username:         "Bénévole intéressé par une mission!",
      text:             candidacy.volunteer.first_name + " " + candidacy.volunteer.last_name + " a consulté la mission \"" + candidacy.mission.title + "\" pour la 2ème fois. Un mail de motivation lui a été envoyé!"
    }
    uri = URI.parse("https://hooks.slack.com/services/#{ENV['SLACK_EMAIL_SIGNUP_TOKEN']}")
    Net::HTTP.post_form(uri, :payload => JSON.generate(payload))
  end
end
