# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding....."

#Soccer Cage Brickell
l_one = Location.create(name: "Soccer Cage Brickell", street: "301 SW 8th St" , city: "Miami" , zipcode: "33130", state: "FL", url: "https://www.soccercagemiami.com", phone: "305-343-1757", neighborhood: "Brickell", description: "Test description for Soccer Cage Brickell", mon_open: 10, mon_close: 23, tue_open: 10, tue_close: 23, wed_open: 10, wed_close: 23, thu_open: 10, thu_close: 23, fri_open: 10, fri_close: 23, sat_open: 10, sat_close: 23, sun_open: 10, sun_close: 23)

l_one_f_one = Field.create(game_type: 4,surface: "turf",outdoor: true, location: l_one)
l_one_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_one)
l_one_f_three = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_one)

#Downtown Soccer Miami
l_two = Location.create(name: "Downtown Soccer Miami", street: "444 NW 5th St" , city: "Miami" , zipcode: "33128", state: "FL", url: "https://www.downtownsoccermiami.com", phone: "305-808-9997", neighborhood: "Downtown", description: "Test description for Downtown Soccer Miami",mon_open: 8, mon_close: 23, tue_open: 8, tue_close: 23, wed_open: 8, wed_close: 23, thu_open: 8, thu_close: 23, fri_open: 8, fri_close: 23, sat_open: 8, sat_close: 23, sun_open: 8, sun_close: 23)

l_two_f_one = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_two)
l_two_f_two = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_two)

#"Brickell Soccer Rooftop
l_three = Location.create(name: "Brickell Soccer Rooftop", street: "444 Brickell Ave, 2nd Fl" , city: "Miami" , zipcode: "33131", state: "FL", url: "http://soccerooftop.com", phone: "305-967-3512", neighborhood: "Brickell", description: "Test description for Brickell Soccer Rooftop",mon_open: 16, mon_close: 24, tue_open: 16, tue_close: 24, wed_open: 16, wed_close: 24, thu_open: 16, thu_close: 24, fri_open: 16, fri_close: 24, sat_open: 16, sat_close: 24, sun_open: 16, sun_close: 24)

l_three_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_three)
l_three_f_two = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_three)

#Americas Got Soccer
l_four = Location.create(name: "Americas Got Soccer", street: "3488 N Andrews Ave" , city: "Oakland Park" , zipcode: "33309", state: "FL", url: "http://www.americasgotsoccer.com/", phone: "954-990-0611", neighborhood: "Oakland Park", description: "Test description for Americas Got Soccer",mon_open: 18, mon_close: 23, tue_open: 18, tue_close: 23, wed_open: 18, wed_close: 23, thu_open: 18, thu_close: 23, fri_open: 18, fri_close: 23, sat_open: 18, sat_close: 23, sun_open: 18, sun_close: 23)

l_four_f_one = Field.create(game_type: 5,surface: "turf",outdoor: false, location: l_four)
l_four_f_two = Field.create(game_type: 6,surface: "turf",outdoor: false, location: l_four)

#Miami Soccer Station
l_five = Location.create(name: "Miami Soccer Station", street: "431 NW 79th St" , city: "Miami" , zipcode: "33150", state: "FL", url: "https://www.miamisoccerstation.com/parkwebsite/miamisoccerstation", phone: "786-458-6365", neighborhood: "Brickell", description: "Test description for Miami Soccer Station",mon_open: 9, mon_close: 22, tue_open: 9, tue_close: 22, wed_open: 9, wed_close: 22, thu_open: 9, thu_close: 22, fri_open: 9, fri_close: 22, sat_open: 9, sat_close: 22, sun_open: 9, sun_close: 22)

l_five_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)
l_five_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)

#Sunset Park
l_six = Location.create(name: "Sunset Park", street: "4200 7th Ave" , city: "Brooklyn" , zipcode: "11232", state: "NY", url: "https://www.nycgovparks.org/parks/sunset-park", phone: "212-458-6365", neighborhood: "Brooklyn", description: "Test description for Sunset Park",mon_open: 19, mon_close: 22, tue_open: 19, tue_close: 22, wed_open: 19, wed_close: 22, thu_open: 19, thu_close: 22, fri_open: 19, fri_close: 22, sat_open: 19, sat_close: 22, sun_open: 19, sun_close: 22)

l_six_f_one = Field.create(game_type: 11,surface: "grass",outdoor: true, location: l_six)
l_six_f_two = Field.create(game_type: 7,surface: "grass",outdoor: true, location: l_six)


Event.create(date: Date.today, time: '11:00', price: 1000, event_start: false, event_end: false, field: l_one_f_one )
Event.create(date: Date.today, time: '12:00', price: 1000, event_start: false, event_end: false, field: l_one_f_one )
Event.create(date: Date.today, time: '13:00', price: 1000, event_start: false, event_end: false, field: l_one_f_one )

Event.create(date: Date.today, time: '20:00', price: 1200, event_start: false, event_end: false, field: l_four_f_one )
Event.create(date: Date.today, time: '21:00', price: 1200, event_start: false, event_end: false, field: l_four_f_two )


puts "Locations: #{Location.count}"
puts "Fields: #{Field.count}"
puts "Events: #{Event.count}"
