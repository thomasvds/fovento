require 'net/http'
require 'uri'
require 'json'

class SlackMissionStaffNotifierJob < ActiveJob::Base
  queue_as :default

  def perform(mission)
    payload = {
      username:         "Mission staffée!",
      text:             mission.volunteer.first_name + " " + mission.volunteer.last_name + " est sélectionné par l'assoc pour la mission \"" + mission.title + "\""
    }
    uri = URI.parse("https://hooks.slack.com/services/#{ENV['SLACK_EMAIL_SIGNUP_TOKEN']}")
    Net::HTTP.post_form(uri, :payload => JSON.generate(payload))
  end
end
