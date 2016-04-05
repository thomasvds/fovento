class Candidacy < ActiveRecord::Base
  belongs_to :mission
  belongs_to :volunteer
  delegate :nonprofit_profile, to: :mission
end
