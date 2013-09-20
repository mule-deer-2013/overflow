# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(name: 'Doktor', password_digest: '123')
# User.first << Question.new(title: 'Cool question', content: 'What is your name?')


jim = User.create(username:"jim")
sam = User.create(username:"sam")
bob = User.create(username:"bob")

jim.questions << q1 = Question.create(title:"snacks", content:"best snack?")
sam.questions << q2 = Question.create(title:"cities", content:"best city?")
bob.questions << q3 = Question.create(title:"pets", content:"best pets")

a1 = Response.create(content:"cheetos")
a2 = Response.create(content:"hamburgers")
a3 = Response.create(content:"cookies")
a4 = Response.create(content:"cairo")

q1.responses << a1
q1.responses << a2
q1.responses << a3
q2.responses << a4

jim.responses << a1
sam.responses << a2
bob.responses << a3
jim.responses << a4

c1 = Response.create(content:"great answer, cheetos are yummy!")
c2 = Response.create(content:"I like hamburgers tooo!")
c3 = Response.create(content: "make it a cheeseburger")
c4 = Response.create(content:"interesting")

a1.responses << c1
a2.responses << c2
a2.responses << c3
a4.responses << c4

sam.responses << c1
bob.responses << c2
jim.responses << c3
sam.responses << c4

sam.votes << v1=Vote.create(value:1)
bob.votes << v2=Vote.create(value:1)
jim.votes << v3=Vote.create(value:1)

q1.votes << v1
a1.votes << v2
a2.votes << v3

