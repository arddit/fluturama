# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create!(name:  "Example User",
# 						 email: "example@arddit.com",
#              password:              "password",
#              password_confirmation: "password",
#              admin: true)

# 99.times do |n|
# 	name  = Faker::Name.name
# 	email = "example-#{n+1}@arddit.com"
# 	password = "password"
# 	User.create!(name:  name,
# 							 email: email,
# 							 password:              password,
# 							 password_confirmation: password)
# end

Airport.delete_all
open("./db/airports.txt") do |airports|
	airports.read.each_line do |airport|
		Airport.create!(:name => airport)
	end
end