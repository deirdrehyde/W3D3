# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
ShortenedUrl.destroy_all

user1 = User.create!(email: 'jim@gmail.com')
user2 = User.create!(email: 'tim@gmail.com')
user3 = User.create!(email: 'zim@gmail.com')
