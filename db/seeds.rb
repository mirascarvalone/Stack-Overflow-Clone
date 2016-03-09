# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Question.create!(title: "Question 1", content: "What is the meaning of life?", user: User.last)
Question.create!(title: "Question 2", content: "What should I eat for dinner?", user: User.first)
Answer.create!(content: "I don't know", question: Question.first, user: User.first)
Answer.create!(content: "I'm not sure'", question: Question.second, user: User.last)