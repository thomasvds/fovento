class Mission < ActiveRecord::Base
  belongs_to :nonprofit_profile
  belongs_to :volunteer
  has_many :candidacies
  has_one :logbook
end
