# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Candidate.create(name: "Lord Shadow", party: "Cultist Party")
Candidate.create(name: "Miyamoto Musashi", party: "Bushido Party")
Voter.create(name: "Jim Jones", party: "Cultist Party")
Voter.create(name: "Rishi Yamamoto", party: "Bushido Party")
