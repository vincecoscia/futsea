# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding....."

l_one = Location.create(name: "Soccer Cage Brickell", street: "301 SW 8th St" , city: "Miami" , zipcode: "33130", state: "FL", url: "https://www.soccercagemiami.com", phone: "305-343-1757", neighborhood: "Brickell", mon_open: 10, mon_close: 23, tue_open: 10, tue_close: 23, wed_open: 10, wed_close: 23, thu_open: 10, thu_close: 23, fri_open: 10, fri_close: 23, sat_open: 10, sat_close: 23, sun_open: 10, sun_close: 23)

l_two = Location.create(name: "Downtown Soccer Miami", street: "444 NW 5th St" , city: "Miami" , zipcode: "33128", state: "FL", url: "https://www.downtownsoccermiami.com", phone: "305-808-9997", neighborhood: "Downtown", mon_open: 8, mon_close: 23, tue_open: 8, tue_close: 23, wed_open: 8, wed_close: 23, thu_open: 8, thu_close: 23, fri_open: 8, fri_close: 23, sat_open: 8, sat_close: 23, sun_open: 8, sun_close: 23)

l_one_f_one = Field.create(game_type: 4,surface: "turf",outdoor: true, location: l_one)
l_one_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_one)
l_one_f_three = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_one)

l_two_f_one = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_two)
l_two_f_two = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_two)

Event.create(date: Date.today, time: '11:00', price: 1000, event_start: false, event_end: false, field: l_one_f_one )
Event.create(date: Date.today, time: '12:00', price: 1000, event_start: false, event_end: false, field: l_one_f_one )
Event.create(date: Date.today, time: '13:00', price: 1000, event_start: false, event_end: false, field: l_one_f_one )


puts "We created #{Location.count} Locations, #{Field.count} Fields, and #{Event.count} Event"
