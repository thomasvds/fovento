require 'net/http'
require 'uri'
require 'json'

class SlackSignupNotifierJob < ActiveJob::Base
  queue_as :default

  def perform(resource)
    p resource
    payload = {
      username:         "Nouvelle inscription!",
      text:             resource.first_name + " " + resource.last_name
    }
    uri = URI.parse("https://hooks.slack.com/services/#{ENV['SLACK_EMAIL_SIGNUP_TOKEN']}")
    Net::HTTP.post_form(uri, :payload => JSON.generate(payload))
  end
end
