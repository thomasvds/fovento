class Candidacy < ActiveRecord::Base
  belongs_to :mission
  belongs_to :volunteer
end
