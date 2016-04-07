class CreateCandidacies < ActiveRecord::Migration
  def change
    create_table :candidacies do |t|
      t.string :motivation_for_mission
      t.string :motivation_for_skills
      t.string :engagement_practicalities
      t.timestamp :consulted_at
      t.timestamp :decided_at
      t.string :status, default: 'pending moderation'
      t.references :mission, index: true, foreign_key: true
      t.references :volunteer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
