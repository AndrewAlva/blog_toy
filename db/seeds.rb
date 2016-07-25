# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# FLACO'S ADVISE

#encoding: UTF-8
lorem = "Neural courier lights tanto free-market youtube film disposable. Order-flow computer San Francisco pre-dolphin disposable drone cyber-modem tank-traps sub-orbital city 8-bit corporation assault. Bomb car katana garage concrete geodesic industrial grade neural convenience store media sentient 3D-printed A.I. San Francisco sprawl. Silent man tattoo nodality receding BASE jump realism uplink refrigerator skyscraper spook footage pre-wonton soup dolphin. Tanto face forwards alcohol office plastic lights pre-bomb boat hotdog human order-flow."
user = User.create({ username: "elFlaco", email: "hey@flaco.io", password: "123qwe123", password_confirmation: "123qwe123" })


100.times do |index|
	Post.create({ author_id: user.id, title: "Artículo #{index}", content: lorem, visits: rand(0..100) })
end

# rake db:seed (LOCAL COMMAND)
# heroku run rake db:seed (HEROKU COMMAND)