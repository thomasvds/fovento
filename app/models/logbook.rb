class Logbook < ActiveRecord::Base
  belongs_to :mission

  validates :values_and_terms_accepted, acceptance: true
  validates :objectives_understood, acceptance: true
  validates :ways_of_working_defined, acceptance: true
  validates :hours_worked, presence: true, :on => :update
  validates :nps, presence: true, :on => :update
end
