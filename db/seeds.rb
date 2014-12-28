# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
first_country = Country.create(name: "United States")
us_premier = Division.create(level: 1, country_id: 1)


(1..12).each do |m|
	Manager.create(first_name: "Anime", last_name: "Computer")
end

teams = ["Chicago Fire", "Columbus Crew", "D.C. United", "Houston Dynamo",
"New England Revolution", "N.Y. Red Bulls", "Montreal Impact", "Philadelphia Union",
"Sporting Kansas City", "Toronto F.C.", "Colorado Rapids", "Chivas USA"]

(1..12).each do |m|
	Team.create(name: teams[m], country_id: 1, division_id: 1, manager_id: m)
end