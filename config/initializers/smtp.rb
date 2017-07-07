ActionMailer::Base.smtp_settings = {
  address: 'in-v3.mailjet.com',
  port: '25',
  domain: 'fovento.be',
  user_name: ENV['MAILJET_USERNAME'],
  password: ENV['MAILJET_PASSWORD']
  # authentication: :cram_md5,
  # enable_starttls_auto: true
}
