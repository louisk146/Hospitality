	Category.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
	individual = Category.where(name: "Individual").first_or_create(name: "Individual")
	group_or_organisation = Category.where(name: "Group or Organisation").first_or_create(name: "Group or Organisation")

