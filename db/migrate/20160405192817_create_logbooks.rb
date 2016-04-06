class CreateLogbooks < ActiveRecord::Migration
  def change
    create_table :logbooks do |t|
      t.references :mission, index: true, foreign_key: true
      t.text :volunteer_testimonial
      t.text :volunteer_feedback
      t.boolean :testimonial_publishable, default: true
      t.integer :nps
      t.text :nonprofit_testimonial
      t.integer :hours_worked
      t.datetime :planned_end_date
      t.text :starting_comments

      t.timestamps null: false
    end
  end
end
