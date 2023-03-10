require 'faker'
require 'open-uri'

puts "Cleaning database"
Itinerary.destroy_all
User.destroy_all
Activity.destroy_all
ItineraryActivity.destroy_all
Favourite.destroy_all

puts 'Creating 10 fake Users including test, Lazy Susan, and Tripper Trevor...'

User.create!(
  email: "test@tat.com",
  password: 123456,
  username: "Lieutenant Test"
)

User.create!(
  email: "susan@tat.com",
  password: 123456,
  username: "Lazy Susan"
)

User.create!(
  email: "trevor@tat.com",
  password: 123456,
  username: "Tripper Trevor"
)

7.times do
  User.create!(
    email: Faker::Internet.email,
    password: 123456,
    username: Faker::Internet.username
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

eiffeltower = Activity.create(
  name: "Eiffel Tower",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris, France"
)

file_11 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678377318/eiffel_xe5juv.webp")
eiffeltower.photo.attach(io: file_11, filename:"madame.jpg", content_type: "image/jpg")

louvre = Activity.create(
  name: "The Louvre",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Rue de Rivoli, 75001 Paris, France"
)

file_12 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678377690/louvre_ookyvj.jpg")
louvre.photo.attach(io: file_12, filename:"madame.jpg", content_type: "image/jpg")

gardens = Activity.create(
  name: "Luxembourg Gardens",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Luxembourg Gardens, 75006 Paris, France"
)

file_13 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678378217/lux_psey0d.webp")
gardens.photo.attach(io: file_13, filename:"madame.jpg", content_type: "image/jpg")

rivertour = Activity.create(
  name: "Bateaux Parisiens Seine River Gourmet Lunch & Sightseeing Cruise",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Port de la Bourdonnais, 75007 Paris, France"
)

file_14 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678378986/145_rqtxhb.jpg")
rivertour.photo.attach(io: file_14, filename:"madame.jpg", content_type: "image/jpg")

panthean = Activity.create(
  name: "The Panthéon",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Pl. du Panthéon, 75005 Paris, France"
)
  file_15 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678379458/Pantheon-Paris_iksb1k.webp")
  panthean.photo.attach(io: file_15, filename:"madame.jpg", content_type: "image/jpg")

ombres = Activity.create(
  name: "Les Ombres Restaurant",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "27 Quai Jacques Chirac, 75007 Paris, France"
)
file_16 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678379827/IMG_6339_gn8nri.jpg")
ombres.photo.attach(io: file_16, filename:"madame.jpg", content_type: "image/jpg")

orsay = Activity.create(
  name: "Orsay Museum",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "1 Rue de la Légion d'Honneur, 75007 Paris, France"
)

file_17 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678380039/diane-picchiottino-eDv8b9Fa-tA-unsplash_gismdu.jpg")
orsay.photo.attach(io: file_17, filename:"madame.jpg", content_type: "image/jpg")

chapelle = Activity.create(
  name: "Sainte-Chapelle",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "10 Bd du Palais, 75001 Paris, France"
)

file_18 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678380820/SAINTE_CHAPELLE-32_inlwas.jpg")
chapelle.photo.attach(io: file_18, filename:"madame.jpg", content_type: "image/jpg")

disney = Activity.create(
  name: "Disney Land Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Bd de Parc, 77700 Coupvray, France"
)

file_19 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381133/63f25c4682440fdf3bb659eb3246b06a-_Disney_6_xm2nvh.png")
disney.photo.attach(io: file_19, filename:"madame.jpg", content_type: "image/jpg")

 segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_20 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_20, filename:"madame.jpg", content_type: "image/jpg")

# NEED TO PROPERLY COMPLETE THESE ACTIVITIES

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_21 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_21, filename:"madame.jpg", content_type: "image/jpg")

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_22 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_22, filename:"madame.jpg", content_type: "image/jpg")

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_23 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_23, filename:"madame.jpg", content_type: "image/jpg")

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_24 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_24, filename:"madame.jpg", content_type: "image/jpg")

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_25 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_25, filename:"madame.jpg", content_type: "image/jpg")

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_26 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_26, filename:"madame.jpg", content_type: "image/jpg")

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_27 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_27, filename:"madame.jpg", content_type: "image/jpg")

segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France"
)

file_28 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_28, filename:"madame.jpg", content_type: "image/jpg")



city = %w(Paris London Barcelona Berlin Rio)

puts 'Creating 20 fake Itineraries...'

itinerary_1 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2022, 5, 8),
  end_date: Date.new(2022, 5, 10),
  user: User.all[2], # Trevor
  public: true
)

itinerary_1.original_itinerary_id = itinerary_1.id

itinerary_2 = Itinerary.create!(
  title: Faker::Company.name,
  destination: "Paris",
  start_date: Date.new(2022, 9, 26),
  end_date: Date.new(2022, 9, 30),
  user: User.all[2], # Trevor
  public: true
)

itinerary_2.original_itinerary_id = itinerary_2.id

itinerary_3 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2], # Trevor
  public: false
)

itinerary_3.original_itinerary_id = itinerary_3.id

itinerary_4 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[3],
  public: true
)

itinerary_4.original_itinerary_id = itinerary_4.id

# ensure itinerary_4 and itinerary_5 are the same except for dates

itinerary_5 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 1, 4),
  end_date: Date.new(2023, 1, 7),
  user: User.all[3],
  public: true
)

itinerary_5.original_itinerary_id = itinerary_5.id

itinerary_6 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2022, 8, 1),
  end_date: Date.new(2022, 8, 5),
  user: User.all[4],
  public: true
)

itinerary_6.original_itinerary_id = itinerary_5.id

itinerary_7 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 10),
  user: User.all[4],
  public: true
)

itinerary_7.original_itinerary_id = itinerary_7.id

itinerary_8 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 15),
  user: User.all[5],
  public: true
)

itinerary_8.original_itinerary_id = itinerary_8.id

itinerary_9 = Itinerary.create!(
  title: Faker::Company.name,
  destination: "Paris",
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 5),
  user: User.all[6],
  public: true
)

itinerary_9.original_itinerary_id = itinerary_9.id

itinerary_10 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 12),
  user: User.all[6],
  public: true
)

itinerary_10.original_itinerary_id = itinerary_10.id

itinerary_11 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 13),
  user: User.all[7],
  public: true
)

itinerary_11.original_itinerary_id = itinerary_11.id

itinerary_12 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[7],
  public: true
)

itinerary_12.original_itinerary_id = itinerary_12.id

itinerary_13 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[7],
  public: true
)

itinerary_13.original_itinerary_id = itinerary_13.id

itinerary_14 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[8],
  public: true
)

itinerary_14.original_itinerary_id = itinerary_14.id

itinerary_15 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 5),
  user: User.all[9],
  public: true
)

itinerary_15.original_itinerary_id = itinerary_15.id

itinerary_16 = Itinerary.create!(
  title: Faker::Company.name,
  destination: "Paris",
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 9),
  user: User.all[9],
  public: true
)

itinerary_16.original_itinerary_id = itinerary_16.id

itinerary_17 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 8),
  user: User.all[8],
  public: true
)

itinerary_17.original_itinerary_id = itinerary_17.id

itinerary_18 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 11),
  user: User.all[9],
  public: true
)

itinerary_18.original_itinerary_id = itinerary_18.id

itinerary_19 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 4),
  user: User.all[6],
  public: true
)

itinerary_19.original_itinerary_id = itinerary_19.id

itinerary_20 = Itinerary.create!(
  title: Faker::Company.name,
  destination: city.sample,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 10),
  user: User.all[4],
  public: true
)

itinerary_20.original_itinerary_id = itinerary_20.id

puts 'Creating 100 fake Favourites...'

Favourite.create!(
  user_id: 1,
  activity_id: 1
)

Favourite.create!(
  user_id: 1,
  activity_id: 10
)

Favourite.create!(
  user_id: 1,
  activity_id: 15
)

Favourite.create!(
  user_id: 1,
  activity_id: 20
)

puts 'Creating 15 fake Itinerary Activities for 4-day Paris trip...'

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 13
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 14
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 15
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 16
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 17
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 18
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 19
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 20
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 21
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 22
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 23
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 24
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 25
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 26
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 27
)

ItineraryActivity.create!(
  itinerary_id: 2,
  activity_id: 28
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 13
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 14
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 15
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 16
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 17
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 18
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 19
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 20
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 21
)

ItineraryActivity.create!(
  itinerary_id: 9,
  activity_id: 22
)

puts 'Finished!'
