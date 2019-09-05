# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Band.destroy_all

TEST_USER_COUNT = 10
(0..TEST_USER_COUNT).each do |i|
  User.create(email: "usertest#{i}.tmail.com", password: "password")
end

TEST_BAND_COUNT = 10
TEST_BAND_NAME_SET = ["red", "blue", "black", "angry", "pretty", "haters", "goo", "bad", "love", "crazy", "88", "99", "69", "ers", "zeneth", "blah", "meh", "lol", "pretentious", "ugly", "with the face","bro", "masters"]

(0..TEST_BAND_COUNT).each do |i|
  band_name = ""
  rand(3...4).times {|t| band_name += TEST_BAND_NAME_SET.sample }
  band_name[0] = band_name[0].upcase
  Band.create(name: band_name)
end