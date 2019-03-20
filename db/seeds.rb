# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# # https://i.ibb.co/zm3XB8y/citymain.png
# # https://i.ibb.co/vk9yTYF/cliff.png
# # https://i.ibb.co/XCwpM86/cliff2.png
# # https://i.ibb.co/DLC2csT/fieldnightlarge.png
# # https://i.ibb.co/3NCMv1q/fieldnightlarge2.png
# # https://i.ibb.co/t8yd2Vh/fieldocean.png
# # https://i.ibb.co/vZVwgj8/fieldsgreen.png
# # https://i.ibb.co/mtL5JKp/fieldwoods.png
# # https://i.ibb.co/sKkH4CY/goalnight.png
# # https://i.ibb.co/QM2sg7Y/indoor.png
# # https://i.ibb.co/64j8MjR/indoor2.png
# # https://i.ibb.co/pyPKGvx/stadium.png
# # https://i.ibb.co/S6Kwrbn/stadiumfield.png
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

 puts "Seeding....."

 #Soccer Cage Brickell
 l_one = Location.create(name: "Soccer Cage Brickell", street: "301 SW 8th St" , city: "Miami" , zipcode: "33130", state: "FL", url: "https://www.soccercagemiami.com", phone: "305-343-1757", neighborhood: "Brickell", lat: "25.7666", lon: "-80.1998", price: 900, description: "Test description for Soccer Cage Brickell", open: 16, close: 24,img: 'https://i.ibb.co/zm3XB8y/citymain.png' ,img2: 'https://i.ibb.co/DLC2csT/fieldnightlarge.png' ,img3: 'https://i.ibb.co/vk9yTYF/cliff.png')

 l_one_f_one = Field.create(game_type: 4,surface: "turf",outdoor: true, location: l_one)
 l_one_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_one)
 l_one_f_three = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_one)

 #Downtown Soccer Miami
 l_two = Location.create(name: "Downtown Soccer Miami", street: "444 NW 5th St" , city: "Miami" , zipcode: "33128", state: "FL", url: "https://www.downtownsoccermiami.com", phone: "305-808-9997", neighborhood: "Downtown", lat: "25.7666", lon: "-80.1998", price: 1000, description: "Test description for Downtown Soccer Miami",open: 8, close: 22,img: 'https://i.ibb.co/t8yd2Vh/fieldocean.png'  ,img2: 'https://i.ibb.co/S6Kwrbn/stadiumfield.png' ,img3: 'https://i.ibb.co/DLC2csT/fieldnightlarge.png' )

 l_two_f_one = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_two)
 l_two_f_two = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_two)

 #Brickell Soccer Rooftop
 l_three = Location.create(name: "Brickell Soccer Rooftop", street: "444 Brickell Ave, 2nd Fl" , city: "Miami" , zipcode: "33131", state: "FL", url: "http://soccerooftop.com", phone: "305-967-3512", neighborhood: "Brickell", lat: "25.7691", lon: "-80.1903", price: 1200, description: "Test description for Brickell Soccer Rooftop",open: 16, close: 24,img: 'https://i.ibb.co/zm3XB8y/citymain.png' ,img2: 'https://i.ibb.co/mtL5JKp/fieldwoods.png',img3:'https://i.ibb.co/vk9yTYF/cliff.png' )

 l_three_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_three)
 l_three_f_two = Field.create(game_type: 6,surface: "turf",outdoor: true, location: l_three)

 #Americas Got Soccer
 l_four = Location.create(name: "Americas Got Soccer", street: "3488 N Andrews Ave" , city: "Ft. Lauderdale" , zipcode: "33309", state: "FL", url: "http://www.americasgotsoccer.com/", phone: "9549900611", neighborhood: "Oakland Park", lat: "26.1708", lon: "-80.1453", price: 1200, description: "Test description for Americas Got Soccer",open: 18, close: 23,img: 'https://i.ibb.co/QM2sg7Y/indoor.png',img2: 'https://i.ibb.co/64j8MjR/indoor2.png' ,img3: 'https://i.ibb.co/S6Kwrbn/stadiumfield.png' )

 l_four_f_one = Field.create(game_type: 5,surface: "turf",outdoor: false, location: l_four)
 l_four_f_two = Field.create(game_type: 6,surface: "turf",outdoor: false, location: l_four)

 #Miami Soccer Station
 l_five = Location.create(name: "Miami Soccer Station", street: "431 NW 79th St" , city: "Miami" , zipcode: "33150", state: "FL", url: "https://www.miamisoccerstation.com/parkwebsite/miamisoccerstation", phone: "786-458-6365", neighborhood: "Brickell", lat: "25.8474", lon: "-80.2042", price: 1100, description: "Test description for Miami Soccer Station",open: 16, close: 22, img:'https://i.ibb.co/t8yd2Vh/fieldocean.png',img2: 'https://i.ibb.co/DLC2csT/fieldnightlarge.png',img3: 'https://i.ibb.co/XCwpM86/cliff2.png' )

 l_five_f_one = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)
 l_five_f_two = Field.create(game_type: 5,surface: "turf",outdoor: true, location: l_five)

 #SDG Soccer Complex
 l_six = Location.create(name: "SDG Soccer Complex", street: "16601 NE 15th Ave" , city: "Miami" , zipcode: "33162", state: "FL", url: "http://www.sdgsoccer.com/", phone: "3059750316", neighborhood: "North Miami Beach", lat: "25.9283", lon: "-80.1687", price: 1000, description: "Test description for SDG Soccer Complex",open: 16, close: 22,img:'https://i.ibb.co/64j8MjR/indoor2.png',img2:'https://i.ibb.co/zm3XB8y/citymain.png',img3:'https://i.ibb.co/vk9yTYF/cliff.png' )

 l_six_f_one = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_six)
 l_six_f_two = Field.create(game_type: 7,surface: "turf",outdoor: true, location: l_six)

 #Dowdy Field
 l_seven = Location.create(name: "Dowdy Field", street: "2100 Johnson St" , city: "Hollywood" , zipcode: "33020", state: "FL", url: "https://www.yelp.com/biz/dowdy-field-hollywood?osq=soccer+fields", phone: "9549900611", neighborhood: "Hollywood", lat: "26.0197", lon: "-80.1504", price: 700, description: "Test description for Dowdy Field",open: 18, close: 22,img: 'https://i.ibb.co/3NCMv1q/fieldnightlarge2.png' ,img2: 'https://i.ibb.co/sKkH4CY/goalnight.png' ,img3: 'https://i.ibb.co/mtL5JKp/fieldwoods.png' )

 l_sevenf_one = Field.create(game_type: 11,surface: "turf",outdoor: true, location: l_seven)

 Field.all.each do |field|
   field.location.open.upto(field.location.close).each do |time|
     0.upto(3).each do |day|
       Event.create(
         datetime: DateTime.new(2019, 3, 20+day, time, 0, 0),
         price: field.location.price,
         field: field
       )
     end
   end
 end



# create users and reservations

# require 'open-uri'

#  User.destroy_all

#  100.times do |n|
#    user = User.create!(
#            email:      Faker::Internet.email,
#            password:   'password'
#          )
#    profile = Profile.create!(
#      name: Faker::Name.first_name,
#      position:  ["Forward", "Midfielder","Defender","Goalie"].sample,
#      user:       user
#    )
#   url = "https://randomuser.me/api/portraits/med/#{['men', 'women'].sample}/#{rand(1..20)}.jpg"
#    image = open(url)
#    profile.pic.attach(io: image, filename: "pic.jpg")
#    p "#{n} users"
#  end


# 2000.times do |n|
#   e = Event.event_open.sample.id
#   u = User.count
#   Reservation.create(
#     event_id: e,
#     user_id:  rand(1..u).to_i,
#   )
# end

puts "Locations: #{Location.count}"
puts "Fields: #{Field.count}"
puts "Events: #{Event.count}"
puts "#{User.count} users in the system..."
puts "#{Reservation.count} reservations..."