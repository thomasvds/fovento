class CreateNonprofitProfiles < ActiveRecord::Migration
  def change
    create_table :nonprofit_profiles do |t|
      t.string :name
      t.string :sector
      t.string :website
      t.string :email
      t.text :address
      t.text :map_frame
      t.text :description
      t.string :neighbourhood
      t.string :phone_number
      t.string :logo

      t.timestamps null: false
    end
  end
end
