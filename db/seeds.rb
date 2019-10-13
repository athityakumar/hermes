# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = Traveller.create(name: "Athitya Kumar", email: "athityakumar@gmail.com", password: "password", image: "https://react.semantic-ui.com/images/avatar/large/patrick.png")
t2 = Traveller.create(name: "Udit", email: "ud@it.com", password: "password", image: "https://semantic-ui.com/images/avatar/large/elliot.jpg")

p1 = Place.create(name: "HackUPC", map_url: "https://goo.gl/maps/JMZ1SaAcVgPJUMge6", map_iframe: 'https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3Ab2bf615a212d1d816a950d41be14ce05c1a42125823296595718e391050ff9c1&amp;width=540&amp;height=480&amp;lang=en_FR&amp;scroll=true')
s1 = Staff.create(name: "Gorka", place: p1, email: "gorka@hackupc.com", password: "password")
v1 = Visit.create(traveller: t1, place: p1)
g1 = Group.create(name: p1.name)
GroupMembership.create(group: g1, user_id: t1.id)
GroupMembership.create(group: g1, user_id: t2.id)


p1.update(group: g1)


post1 = Post.create(description: "Anyone wants to go to La Sagrada Familia on Sunday eve?", group: g1, user_id: t1.id)
comment1 = Comment.create(description: "Sure, around what time?", post: post1, user_id: t2.id)
post2 = Post.create(description: "We've got extra goodies!", group: g1, user_id: s1.id, user_class: "Staff")