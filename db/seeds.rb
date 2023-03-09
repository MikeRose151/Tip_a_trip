require 'faker'
require 'open-uri'

puts "Cleaning database"
Itinerary.destroy_all
User.destroy_all
Activity.destroy_all
ItineraryActivity.destroy_all
Favourite.destroy_all

puts 'Creating 20 fake Users...'

User.create!(
  email:  "test@tat.com",
  password: 123456,
  username: Faker::Internet.user('username')
)

19.times do
  User.create!(
    email:  Faker::Internet.email,
    password: 123456,
    username: Faker::Internet.user('username')
  )
end
puts 'Finished!'

puts 'Creating 50 fake Activities...'
# 50.times do
#   Activity.create!(
#     name: Faker::Hobby.activity,
#     duration: rand(30..180),
#     cost: rand(0..1000),
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
#   )
# end
# puts 'Finished!'

londoneye = Activity.create(
    name: "London Eye",
    duration: rand(30..180),
    cost: rand(0..50),
    address: "London Eye, Riverside Building, County Hall, London SE1 7PB"
)

file_1 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678371750/london_eye_b439jp.jpg")
    londoneye.photo.attach(io: file_1, filename:"skiing.jpg", content_type: "image/jpg")

marketvisit = Activity.create(
  name: "Borough Market visit",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "London, 8 Southwark St, London SE1 1TL"
)

file_2 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678372872/bruno-martins-dhe2qsXN_2o-unsplash_k9h8we.jpg")
    marketvisit.photo.attach(io: file_2, filename:"market.jpg", content_type: "image/jpg")

ballpit = Activity.create(
  name: "Ballie Ballerson Cocktail Bar",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "97-113 Curtain Rd, London EC2A 3BS"
)

file_3 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678373134/ballpit_jlskvq.jpg")
    ballpit.photo.attach(io: file_3, filename:"ballpit.jpg", content_type: "image/jpg")

londondungeons = Activity.create(
  name: "London Dungeons",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Riverside Building, County Hall, Westminster Bridge Rd, London SE1 7PB"
)

file_4 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678373599/98_wdqfe2.jpg")
    londondungeons.photo.attach(io: file_4, filename:"londondungeons.jpg", content_type: "image/jpg")

madametussauds = Activity.create(
  name: "Madame Tussauds",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Marylebone Rd, London NW1 5LR"
)

file_5 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374173/madame-tussauds-london-3_z4fxrg.webp")
madametussauds.photo.attach(io: file_5, filename:"madame.jpg", content_type: "image/jpg")

lighterman = Activity.create(
  name: "The Lighterman King's Cross",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "3 Granary Square, London N1C 4BH"
)

file_6 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374602/OPUMO-Lighterman-Banner_gexxwl.webp")
lighterman.photo.attach(io: file_6, filename:"madame.jpg", content_type: "image/jpg")

shard = Activity.create(
  name: "The Shard, Aqua Shard Restaurant",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "32 London Bridge St, London SE1 9SG"
)

file_7 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374924/shard_ma2rjq.jpg")
shard.photo.attach(io: file_7, filename:"madame.jpg", content_type: "image/jpg")

feeteast = Activity.create(
  name: "93 Feet East Club",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "150 Brick Ln, London E1 6QL"
)

file_8 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678375469/93-the-courtyard-03_ssqxr3.jpg")
feeteast.photo.attach(io: file_8, filename:"madame.jpg", content_type: "image/jpg")

tatemodern = Activity.create(
  name: "Tate Modern",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Bankside, London SE1 9TG"
)

file_9 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678375915/tate_cfqmzb.jpg")
tatemodern.photo.attach(io: file_9, filename:"madame.jpg", content_type: "image/jpg")

lewagondemo = Activity.create(
  name: "Le Wagon Demo Day",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Shoreditch Stables, North, 138 Kingsland Rd, London E2 8DY"
)

file_10 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678376163/Le-Wagon-cover_jugohq.jpg")
lewagondemo.photo.attach(io: file_10, filename:"madame.jpg", content_type: "image/jpg")

city = %w(Paris London Barcelona Berlin Rio)

puts 'Creating 30 fake Itineraries...'
30.times do
  Itinerary.create!(
    title: Faker::Company.name,
    destination: city.sample,
    start_date: Date.new(2023, 2, 3),
    end_date: Date.new(2023, 2, 6),
    user: User.all.sample,
    public: [true, false].sample
  )
end

puts 'Creating 100 fake Favourites...'
200.times do
  Favourite.create!(
    user_id: User.all.sample.id,
    activity_id: Activity.all.sample.id
  )
end

puts 'Creating 100 fake Itinerary Activities...'
200.times do
  ItineraryActivity.create!(
    itinerary_id: Itinerary.all.sample.id,
    activity_id: Activity.all.sample.id
  )
end
puts 'Finished!'
