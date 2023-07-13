require 'open-uri'

london = Destination.find_by(city: "London")
paris = Destination.find_by(city: "Paris")

puts 'Creating 12 London Activities and 15 Paris Activities...'

londoneye = Activity.create(
    name: "London Eye",
    duration: 30,
    cost: 38,
    address: "London Eye, Riverside Building, County Hall, London SE1 7PB",
    destination_id: london.id
)

file_1 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178888/development/london_eye.jpg")
    londoneye.photo.attach(io: file_1, filename:"skiing.jpg", content_type: "image/jpg")

marketvisit = Activity.create(
  name: "Borough Market visit",
  duration: 120,
  cost: rand(30..50),
  address: "London, 8 Southwark St, London SE1 1TL",
  destination_id: london.id
)

file_2 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178891/development/borough_market.jpg")
    marketvisit.photo.attach(io: file_2, filename:"market.jpg", content_type: "image/jpg")

londondungeon = Activity.create(
  name: "London Dungeons",
  duration: 90,
  cost: 27,
  address: "Riverside Building, County Hall, Westminster Bridge Rd, London SE1 7PB",
  destination_id: london.id
)

file_4 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184312/development/london_dungeon.jpg")
    londondungeon.photo.attach(io: file_4, filename:"londondungeons.jpg", content_type: "image/jpg")

madametussauds = Activity.create(
  name: "Madame Tussauds",
  duration: 60,
  cost: 32,
  address: "Marylebone Rd, London NW1 5LR",
  destination_id: london.id
)

file_5 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178896/development/madame_tussauds.webp")
madametussauds.photo.attach(io: file_5, filename:"madame.jpg", content_type: "image/jpg")

shard = Activity.create(
  name: "The Shard",
  duration: 30,
  cost: 32,
  address: "32 London Bridge St, London SE1 9SG",
  destination_id: london.id
)

file_7 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184315/development/shard.jpg")
shard.photo.attach(io: file_7, filename:"madame.jpg", content_type: "image/jpg")

tatemodern = Activity.create(
  name: "Tate Modern",
  duration: 120,
  cost: rand(0..10),
  address: "Bankside, London SE1 9TG",
  destination_id: london.id
)

file_9 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184318/development/tate_modern.jpg")
tatemodern.photo.attach(io: file_9, filename:"madame.jpg", content_type: "image/jpg")

toweroflondon = Activity.create(
  name: "Tower of London",
  duration: 60,
  cost: 29,
  address: "London EC3N 4AB",
  destination_id: london.id
)

file_11 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184322/development/tower_of_london.jpg")
toweroflondon.photo.attach(io: file_11, filename:"madame.jpg", content_type: "image/jpg")

eiffeltower = Activity.create(
  name: "Eiffel Tower",
  duration: 120,
  cost: 15,
  address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris, France",
  destination_id: paris.id
)

file_13 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184324/development/eiffel_tower.webp")
eiffeltower.photo.attach(io: file_13, filename:"madame.jpg", content_type: "image/jpg")

louvre = Activity.create(
  name: "The Louvre",
  duration: 180,
  cost: 17,
  address: "Rue de Rivoli, 75001 Paris, France",
  destination_id: paris.id
)

file_14 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178910/development/louvre.jpg")
louvre.photo.attach(io: file_14, filename:"madame.jpg", content_type: "image/jpg")

gardens = Activity.create(
  name: "Luxembourg Gardens",
  duration: 60,
  cost: 0,
  address: "Luxembourg Gardens, 75006 Paris, France",
  destination_id: paris.id
)

file_15 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184329/development/luxembourg_palace.webp")
gardens.photo.attach(io: file_15, filename:"madame.jpg", content_type: "image/jpg")

rivertour = Activity.create(
  name: "Bateaux Parisiens Seine River Cruise",
  duration: 90,
  cost: 15,
  address: "Port de la Bourdonnais, 75007 Paris, France",
  destination_id: paris.id
)

file_16 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179685/development/bateaux_parisiens_seine_river_cruise.jpg")
rivertour.photo.attach(io: file_16, filename:"madame.jpg", content_type: "image/jpg")

pantheon = Activity.create(
  name: "The Panthéon",
  duration: 60,
  cost: 10,
  address: "Pl. du Panthéon, 75005 Paris, France",
  destination_id: paris.id
)
  file_17 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179686/development/pantheon.webp")
  pantheon.photo.attach(io: file_17, filename:"madame.jpg", content_type: "image/jpg")

ombres = Activity.create(
  name: "Les Ombres Restaurant",
  duration: 120,
  cost: 127,
  address: "27 Quai Jacques Chirac, 75007 Paris, France",
  destination_id: paris.id
)
file_18 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179688/development/les_ombres_restaurant.jpg")
ombres.photo.attach(io: file_18, filename:"madame.jpg", content_type: "image/jpg")

orsay = Activity.create(
  name: "Orsay Museum",
  duration: 120,
  cost: 15,
  address: "1 Rue de la Légion d'Honneur, 75007 Paris, France",
  destination_id: paris.id
)

file_19 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179690/development/orsay_museum.jpg")
orsay.photo.attach(io: file_19, filename:"madame.jpg", content_type: "image/jpg")

chapelle = Activity.create(
  name: "Sainte-Chapelle",
  duration: 60,
  cost: 11,
  address: "10 Bd du Palais, 75001 Paris, France",
  destination_id: paris.id
)

file_20 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178921/development/sainte_chapelle.jpg")
chapelle.photo.attach(io: file_20, filename:"madame.jpg", content_type: "image/jpg")

disney = Activity.create(
  name: "Disney Land Paris",
  duration: 2880,
  cost: 62,
  address: "Bd de Parc, 77700 Coupvray, France",
  destination_id: paris.id
)

file_21 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178924/development/disney.png")
disney.photo.attach(io: file_21, filename:"madame.jpg", content_type: "image/jpg")

# NEED TO PROPERLY COMPLETE THESE ACTIVITIES

triomphe= Activity.create(
  name: "Arc de Triomphe Tour",
  duration: 120,
  cost: 12,
  address: "Pl. Charles de Gaulle, 75008 Paris, France",
  destination_id: paris.id
)

file_23 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179698/development/arc_de_triomphe.jpg")
triomphe.photo.attach(io: file_23, filename:"madame.jpg", content_type: "image/jpg")

montmartre= Activity.create(
  name: "Montmartre Village",
  duration: 240,
  cost: rand(30..50),
  address: "Montmartre, Blanche/Pigalle",
  destination_id: paris.id
)

file_24 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179698/development/arc_de_triomphe.jpg")
montmartre.photo.attach(io: file_24, filename:"madame.jpg", content_type: "image/jpg")

sacre = Activity.create(
  name: "Sacre-Coeur",
  duration: 120,
  cost: 6,
  address: "Parvis du Sacré-Coeur - 35 rue du Chevalier de la Barre - 75018 Paris",
  destination_id: paris.id
)

file_25 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179698/development/arc_de_triomphe.jpg")
sacre.photo.attach(io: file_25, filename:"madame.jpg", content_type: "image/jpg")

rouge= Activity.create(
  name: "Moulin Rouge",
  duration: 150,
  cost: 77,
  address: "Moulin Rouge. 82 boulevard de Clichy - 75018 Paris. Montmartre",
  destination_id: paris.id
)

file_26 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/moulin_rouge.jpg")
rouge.photo.attach(io: file_26, filename:"madame.jpg", content_type: "image/jpg")

wine = Activity.create(
  name: "Loire Valley Castles",
  duration: 720,
  cost: 88,
  address: "Loire Valley Castles, France",
  destination_id: paris.id
)

file_27 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/moulin_rouge.jpg")
wine.photo.attach(io: file_27, filename:"madame.jpg", content_type: "image/jpg")
