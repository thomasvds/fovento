class CreateLogbooks < ActiveRecord::Migration
  def change
    create_table :logbooks do |t|
      t.references :mission, index: true, foreign_key: true
      t.string :volunteer_testimonial
      t.boolean :testimonial_publishable
      t.integer :nps
      t.string :nonprofit_testimonial
      t.integer :hours_worked
      t.datetime :planned_end_date
      t.boolean :objectives_understood
      t.boolean :ways_of_working_defined
      t.text :starting_comments

      t.timestamps null: false
    end
  end
end
