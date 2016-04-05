class Mission < ActiveRecord::Base
  belongs_to :nonprofit_profile
  has_many :candidacies
end
