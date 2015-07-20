User.destroy_all
Team.destroy_all


u1 = User.create(username:"Laura", password:"hi")
u2 = User.create(username:"Michelle", password:"hi", is_admin:true)

t1 = Team.create(name:"SuperWomen", description: "Individuals showing various superhero strengths")
t2 = Team.create(name:"SuperScientists", description: "Individuals showing superhero scientific strength")
t3 = Team.create(name:"Water", )

h1 = Superhero.create(name:"Sponge Bod", height: "5 inches", bio: "saves the world", image_url:"http://movies.inquirer.net/files/2014/11/Spongebob_1sheet_Online1.jpg")
h2 = Superhero.create(name:"Drop", height: "2 inches", bio: "saves the world", image_url:"http://www.elsegundo.org/images/waterdrop2_1.jpg")
h3 = Superhero.create(name:"W", height: "6 feet", bio: "saves the world", image_url:"http://40.media.tumblr.com/6a403b0c807e96884c20e1a146909d3e/tumblr_mmujdoLxJU1s9mw7uo2_1280.png")

h4 = Superhero.create(name: "Radiation", height: "5 feet" , bio: "saves the world", image_url:"https://s-media-cache-ak0.pinimg.com/736x/33/fd/89/33fd89f2801027ee79102fc6eeb65ee6.jpg")
h5 = Superhero.create(name: "FastScience" , height: "7 feet" , bio: "saves the world", image_url:"http://blog.arkive.org/wp-content/uploads/2013/02/Flora-copy.jpg")
h6 = Superhero.create(name: "Dou", height: "unknown" , bio: "saves the world", image_url:"http://www.nea.org/assets/img/pubToday/1105/superheroes1.png")

h7 = Superhero.create(name: "Michelle Obama", height: "5 ft 11 in", bio: "saves the world", image_url:"https://www.whitehouse.gov/sites/whitehouse.gov/files/images/Administration/People/first_lady_portrait_hires.jpg")



# u1.teams << t1
# u2.teams << t1
# u2.teams << t2



# Each superhero:
# name
# height
# bio
# image_urlsubl