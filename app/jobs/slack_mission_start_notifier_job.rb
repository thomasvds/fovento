require 'net/http'
require 'uri'
require 'json'

class SlackMissionStartNotifierJob < ActiveJob::Base
  queue_as :default

  def perform(mission)
    payload = {
      username:         "Mission démarrée!",
      text:             mission.volunteer.first_name + " " + mission.volunteer.last_name + " confirme le démarrage de la mission \"" + mission.title + "\""
    }
    uri = URI.parse("https://hooks.slack.com/services/#{ENV['SLACK_EMAIL_SIGNUP_TOKEN']}")
    Net::HTTP.post_form(uri, :payload => JSON.generate(payload))
  end
end
