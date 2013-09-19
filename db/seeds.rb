# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User.create(name: 'Doktor', password_digest: '123')
# User.first << Question.new(title: 'Cool question', content: 'What is your name?')

Question.create(title: 'Cool question', content: 'What is your name?')

Response.create(user_id: 1, question_id: 23, body: "camp cucamonga")

