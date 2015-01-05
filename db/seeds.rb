# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
first_country = Country.create(name: "United States") unless Country.all
us_premier = Division.create(level: 1, country_id: 1) unless Division.all

require 'faker'
(1..12).each do |m|
	    Manager.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end unless Manager.all

teams = ["Chicago Fire", "Columbus Crew", "D.C. United", "Houston Dynamo",
"New England Revolution", "N.Y. Red Bulls", "Montreal Impact", "Philadelphia Union",
"Sporting Kansas City", "Toronto F.C.", "Colorado Rapids", "Chivas USA"]


(0..11).each do |m|
	Team.create(name: teams[m], country_id: 1, division_id: 1, manager_id: m+1)
end unless Team.all 

r = Random.new
(1..240).each do |m|
	Player.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age:r.rand(18..28), team_id: (m-1)/20 + 1,
	               stamina: r.rand(0..20), goalkeeping: r.rand(0..20), playmaking: r.rand(0..20), passing: r.rand(0..20),
	               wing: r.rand(0..20), defending: r.rand(0..20), scoring: r.rand(0..20), set_pieces: r.rand(0..20))
end unless Player.all

