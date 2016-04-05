class Volunteer < ActiveRecord::Base

  has_many :candidacies
  has_many :missions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :omniauthable, omniauth_providers: [:linkedin]

  def candidate?(mission)
    return candidacies.any? { |candidacy| candidacy.mission == mission }
  end

  def candidacy_for_mission(mission)
    if candidate?(mission)
      return candidacies.find { |candidacy| candidacy.mission == mission }
    else
      return false
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |volunteer|
      volunteer.email = auth.info.email
      volunteer.password = Devise.friendly_token[0,20]
      volunteer.first_name = auth.info.first_name
      volunteer.last_name = auth.info.last_name
      volunteer.headline = auth.info.headline
      volunteer.picture = auth.info.image
      volunteer.linkedin_public_profile = auth.info.public_profile_url
    end
  end

end
