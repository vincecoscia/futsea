# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding....."

#Soccer Cage Brickell
l_one = Location.create(name: "Soccer Cage Brickell", street: "301 SW 8th St" , city: "Miami" , zipcode: "33130", state: "FL", url: "https://www.soccercagemiami.com", phone: "305-343-1757", neighborhood: "Brickell", lon: "-", lat: "", price: 900, description: "Test description for Soccer Cage Brickell", open: 16, close: 24)

l_one_f_one = Field.create(game_type: 4,surface: "turf",outdoor: true, location: l_one)
l_one_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_one)
l_one_f_three = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_one)

#Downtown Soccer Miami
l_two = Location.create(name: "Downtown Soccer Miami", street: "444 NW 5th St" , city: "Miami" , zipcode: "33128", state: "FL", url: "https://www.downtownsoccermiami.com", phone: "305-808-9997", neighborhood: "Downtown", lon: "-25.7666", lat: "80.1998", price: 1000, description: "Test description for Downtown Soccer Miami",open: 8, close: 22)

l_two_f_one = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_two)
l_two_f_two = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_two)

#"Brickell Soccer Rooftop
l_three = Location.create(name: "Brickell Soccer Rooftop", street: "444 Brickell Ave, 2nd Fl" , city: "Miami" , zipcode: "33131", state: "FL", url: "http://soccerooftop.com", phone: "305-967-3512", neighborhood: "Brickell", lon: "-25.7691", lat: "80.1903", price: 1200, description: "Test description for Brickell Soccer Rooftop",open: 16, close: 24)

l_three_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_three)
l_three_f_two = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_three)

#Americas Got Soccer
l_four = Location.create(name: "Americas Got Soccer", street: "3488 N Andrews Ave" , city: "Oakland Park" , zipcode: "33309", state: "FL", url: "http://www.americasgotsoccer.com/", phone: "954-990-0611", neighborhood: "Oakland Park", lon: "-26.1708", lat: "80.1453", price: 1200, description: "Test description for Americas Got Soccer",open: 18, close: 23)

l_four_f_one = Field.create(game_type: 5,surface: "turf",outdoor: false, location: l_four)
l_four_f_two = Field.create(game_type: 6,surface: "turf",outdoor: false, location: l_four)

#Miami Soccer Station
l_five = Location.create(name: "Miami Soccer Station", street: "431 NW 79th St" , city: "Miami" , zipcode: "33150", state: "FL", url: "https://www.miamisoccerstation.com/parkwebsite/miamisoccerstation", phone: "786-458-6365", neighborhood: "Brickell", lon: "-25.8474", lat: "80.2042", price: 1100, description: "Test description for Miami Soccer Station",open: 16, close: 22)

l_five_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)
l_five_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)

#Sunset Park
l_six = Location.create(name: "Sunset Park", street: "4200 7th Ave" , city: "Brooklyn" , zipcode: "11232", state: "NY", url: "https://www.nycgovparks.org/parks/sunset-park", phone: "212-458-6365", neighborhood: "Brooklyn", lon: "-40.6527", lat: "74.0093", price: 1000, description: "Test description for Sunset Park",open: 19, close: 22)

l_six_f_one = Field.create(game_type: 11,surface: "grass",outdoor: true, location: l_six)
l_six_f_two = Field.create(game_type: 7,surface: "grass",outdoor: true, location: l_six)

Field.all.each do |field|
  field.location.open.upto(field.location.close).each do |time|
    0.upto(7).each do |day|
      date = Date.today + day.days
      time = "#{time}:00"
      Event.create(
        date: date,
        time: time,
        price: field.location.price,
        event_start: false,
        event_end: false,
        field: field
      )
    end
  end
end

puts "Locations: #{Location.count}"
puts "Fields: #{Field.count}"
puts "Events: #{Event.count}"


