# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = Traveller.create(name: "Athitya Kumar", email: "athityakumar@gmail.com", password: "password")
p1 = Place.create(name: "HackUPC", map_url: "https://goo.gl/maps/JMZ1SaAcVgPJUMge6", map_iframe: '<iframe src=https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2993.2909183404117!2d2.1111972156178385!3d41.38948810382753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12a498509f468895%3A0xf3ab8ba023c5cd56!2sFIB%20-%20Facultat%20d&#39;Inform%C3%A0tica%20de%20Barcelona!5e0!3m2!1sen!2ses!4v1570884677201!5m2!1sen!2ses" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>')
s1 = Staff.create(name: "Gorka", place: p1, email: "gorka@hackupc.com", password: "password")

v1 = Visit.create(traveller: t1, place: p1)
g1 = Group.create(name: p1.name)
GroupMembership.create(group: g1, user_id: t1.id)

post1 = Post.create(description: "This is nice", group: g1, user_id: t1.id)
comment1 = Comment.create(description: "Is it?", post: post1, user_id: t1.id)
