# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# # Start by cleaning the current DB
# Candidacy.destroy_all
# Logbook.destroy_all
# Mission.destroy_all
# NonprofitProfile.destroy_all
# Volunteer.destroy_all

# Load the different seed files
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
