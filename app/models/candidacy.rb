class Candidacy < ActiveRecord::Base
  belongs_to :mission
  belongs_to :volunteer
  delegate :nonprofit_profile, to: :mission

  accepts_nested_attributes_for :volunteer

  def plus_browse_count!
    self.browse_count += 1
    save!
  end
end
