class Mission < ActiveRecord::Base
  belongs_to :nonprofit_profile
  belongs_to :volunteer
  has_many :candidacies
  has_one :logbook, dependent: :destroy

  after_create :create_logbook

  accepts_nested_attributes_for :logbook

  private

  def create_logbook
    self.logbook = Logbook.new
  end

end
