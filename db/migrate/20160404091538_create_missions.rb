class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :title
      t.string :status
      t.string :author
      t.references :nonprofit_profile, index: true, foreign_key: true
      t.timestamp :published_at
      t.timestamp :staffed_at
      t.timestamp :started_at
      t.timestamp :closed_at
      t.string :skills
      t.string :full_title
      t.text :picture
      t.text :objectives
      t.text :outcomes
      t.string :suggested_duration
      t.string :suggested_start_date
      t.string :suggested_end_date
      t.string :suggested_format
      t.string :impact

      t.timestamps null: false
    end
  end
end
