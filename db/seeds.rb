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


	Hosting.where(name: "Frederecia Youth House").first_or_create(name: "Frederecia Youth House", description: 'A youth and culture institute based in Frederecia Denmark', city: "Frederecia", country: "Denmark", category_id: group_or_organisation.id) 
	Hosting.where(name: "OPERA Project").first_or_create(name: "Opera Project", description: 'Opera stands for Open, Public, Experimental, Residential Activities. It is a co-living expriment in Sheffield England where participants are invited to stay in an open residency format', city: "Sheffield", country: "England", category_id: group_or_organisation.id) 


	Hosting.where(name: "Louis Pohl").first_or_create(name: "Louis Pohl", description: 'Will show you around!', city: "Sheffield", country: "England", category_id: individual.id) 
	Hosting.where(name: "Ben Rea").first_or_create(name: "Ben Rea", description: 'Will show you around!', city: "London", country: "England", category_id: individual.id) 