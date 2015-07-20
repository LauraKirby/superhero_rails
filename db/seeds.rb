# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Team.destroy_all


u1 = User.create(username:"Laura", password:"hi")
u2 = User.create(username:"Michelle", password:"hi", is_admin:true)

t1 = Team.create(name:"SuperWomen", description: "Individuals showing various superhero strengths")
t2 = Team.create(name:"SuperScientists", description: "Individuals showing superhero scientific strength")

# u1.teams << t1
# u2.teams << t1
# u2.teams << t2