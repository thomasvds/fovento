class Volunteer < ActiveRecord::Base
  has_many :candidacies, dependent: :destroy
  has_many :missions

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :confirmable, :omniauthable, omniauth_providers: [:linkedin]

  def candidate?(mission)
    return candidacies.any? { |candidacy| candidacy.mission == mission && candidacy.status != "browsing" }
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |volunteer|
      volunteer.email = auth.info.email
      volunteer.password = Devise.friendly_token[0,20]
      volunteer.first_name = auth.info.first_name
      volunteer.last_name = auth.info.last_name
      volunteer.headline = auth.info.headline
      volunteer.picture = auth.info.image #auth.extra.raw_info.pictureUrls.values.last.first
      volunteer.linkedin_public_profile = auth.info.urls.public_profile
    end
  end
end
