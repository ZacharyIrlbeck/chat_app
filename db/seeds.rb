# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts "Just a second..."

User.create(
    email: 'thing1@site.com',
    password: 'password',
    username: 'thing1'
	)

User.create(
    email: 'thing2@site.com',
    password: 'password',
    username: 'thing2'
	)

15.times do
	User.create(
        email: Faker::Internet.email,
        username: Faker::Games::Pokemon.name,
        password: 'password'
        )
end

10.times do
	Chatroom.create(
        name: Faker::JapaneseMedia::SwordArtOnline.location,
		)
end

50.times do
	Message.create(
		user_id: rand(1..15),
		msg: Faker::GreekPhilosophers.quote,
		chatroom_id: rand(1..10)
	    )
end

puts "Finished!"