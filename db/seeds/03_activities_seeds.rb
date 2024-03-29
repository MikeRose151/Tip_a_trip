require 'open-uri'

london = Destination.find_by(city: "London")
paris = Destination.find_by(city: "Paris")
rio = Destination.find_by(city: "Rio")
nyc = Destination.find_by(city: "New York City")
barcelona = Destination.find_by(city: "Barcelona")
tokyo = Destination.find_by(city: "Tokyo")
toronto = Destination.find_by(city: "Toronto")
rome = Destination.find_by(city: "Rome")
amsterdam = Destination.find_by(city: "Amsterdam")
berlin = Destination.find_by(city: "Berlin")

puts 'Creating London Activities...'
# 7 London activities

# 1
london_eye = Activity.create(
  name: "London Eye",
  duration: 30,
  cost: 38,
  address: "London Eye, Riverside Building, County Hall, London SE1 7PB",
  destination_id: london.id
)
img_london_eye = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178888/development/london_eye.jpg")
london_eye.photo.attach(io: img_london_eye, filename: "london_eye.jpg", content_type: "image/jpg")

# 2
borough_market = Activity.create(
  name: "Borough Market",
  duration: 120,
  cost: rand(30..50),
  address: "London, 8 Southwark St, London SE1 1TL",
  destination_id: london.id
)
img_borough_market = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178891/development/borough_market.jpg")
borough_market.photo.attach(io: img_borough_market, filename: "borough_market.jpg", content_type: "image/jpg")

# 3
london_dungeon = Activity.create(
  name: "London Dungeon",
  duration: 90,
  cost: 27,
  address: "Riverside Building, County Hall, Westminster Bridge Rd, London SE1 7PB",
  destination_id: london.id
)
img_london_dungeon = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184312/development/london_dungeon.jpg")
london_dungeon.photo.attach(io: img_london_dungeon, filename: "london_dungeon.jpg", content_type: "image/jpg")

# 4
madame_tussauds = Activity.create(
  name: "Madame Tussauds",
  duration: 60,
  cost: 32,
  address: "Marylebone Rd, London NW1 5LR",
  destination_id: london.id
)
img_madame_tussauds = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178896/development/madame_tussauds.webp")
madame_tussauds.photo.attach(io: img_madame_tussauds, filename: "madame_tussauds.jpg", content_type: "image/jpg")

# 5
shard = Activity.create(
  name: "The Shard",
  duration: 30,
  cost: 32,
  address: "32 London Bridge St, London SE1 9SG",
  destination_id: london.id
)
img_shard = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184315/development/shard.jpg")
shard.photo.attach(io: img_shard, filename: "shard.jpg", content_type: "image/jpg")

# 6
tate_modern = Activity.create(
  name: "Tate Modern",
  duration: 120,
  cost: rand(0..10),
  address: "Bankside, London SE1 9TG",
  destination_id: london.id
)
img_tate_modern = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184318/development/tate_modern.jpg")
tate_modern.photo.attach(io: img_tate_modern, filename: "tate_modern.jpg", content_type: "image/jpg")

# 7
tower_of_london = Activity.create(
  name: "Tower of London",
  duration: 60,
  cost: 29,
  address: "London EC3N 4AB",
  destination_id: london.id
)
img_tower_of_london = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184322/development/tower_of_london.jpg")
tower_of_london.photo.attach(io: img_tower_of_london, filename: "tower_of_london.jpg", content_type: "image/jpg")

puts 'Creating Paris Activities...'
# 13 Paris activities

# 1
eiffel_tower = Activity.create(
  name: "Eiffel Tower",
  duration: 120,
  cost: 15,
  address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris, France",
  destination_id: paris.id
)
img_eiffel_tower = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184324/development/eiffel_tower.webp")
eiffel_tower.photo.attach(io: img_eiffel_tower, filename: "eiffel_tower.jpg", content_type: "image/jpg")

# 2
louvre = Activity.create(
  name: "The Louvre",
  duration: 180,
  cost: 17,
  address: "Rue de Rivoli, 75001 Paris, France",
  destination_id: paris.id
)
img_louvre = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178910/development/louvre.jpg")
louvre.photo.attach(io: img_louvre, filename: "louvre.jpg", content_type: "image/jpg")

# 3
luxembourg_gardens = Activity.create(
  name: "Luxembourg Gardens",
  duration: 60,
  cost: 0,
  address: "Luxembourg Gardens, 75006 Paris, France",
  destination_id: paris.id
)
img_luxembourg_gardens = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184329/development/luxembourg_palace.webp")
luxembourg_gardens.photo.attach(io: img_luxembourg_gardens, filename: "luxembourg_gardens.jpg", content_type: "image/jpg")

# 4
seine_river_cruise = Activity.create(
  name: "Bateaux Parisiens Seine River Cruise",
  duration: 90,
  cost: 15,
  address: "Port de la Bourdonnais, 75007 Paris, France",
  destination_id: paris.id
)
img_seine_river_cruise = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179685/development/bateaux_parisiens_seine_river_cruise.jpg")
seine_river_cruise.photo.attach(io: img_seine_river_cruise, filename: "seine_river_cruise.jpg", content_type: "image/jpg")

# 5
les_ombres_restaurant = Activity.create(
  name: "Les Ombres Restaurant",
  duration: 120,
  cost: 127,
  address: "27 Quai Jacques Chirac, 75007 Paris, France",
  destination_id: paris.id
)
img_les_ombres_restaurant = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179688/development/les_ombres_restaurant.jpg")
les_ombres_restaurant.photo.attach(io: img_les_ombres_restaurant, filename: "les_ombres_restaurant.jpg", content_type: "image/jpg")

# 6
orsay_museum = Activity.create(
  name: "Orsay Museum",
  duration: 120,
  cost: 15,
  address: "1 Rue de la Légion d'Honneur, 75007 Paris, France",
  destination_id: paris.id
)
img_orsay_museum = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179690/development/orsay_museum.jpg")
orsay_museum.photo.attach(io: img_orsay_museum, filename: "orsay_museum.jpg", content_type: "image/jpg")

# 7
sainte_chapelle = Activity.create(
  name: "Sainte-Chapelle",
  duration: 60,
  cost: 11,
  address: "10 Bd du Palais, 75001 Paris, France",
  destination_id: paris.id
)
img_sainte_chapelle = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178921/development/sainte_chapelle.jpg")
sainte_chapelle.photo.attach(io: img_sainte_chapelle, filename: "sainte_chapelle.jpg", content_type: "image/jpg")

# 8
disneyland_paris = Activity.create(
  name: "Disneyland Paris",
  duration: 2880,
  cost: 62,
  address: "Bd de Parc, 77700 Coupvray, France",
  destination_id: paris.id
)
img_disneyland_paris = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178924/development/disney.png")
disneyland_paris.photo.attach(io: img_disneyland_paris, filename: "disneyland_paris.jpg", content_type: "image/jpg")

# 9
arc_de_triomphe = Activity.create(
  name: "Arc de Triomphe",
  duration: 120,
  cost: 12,
  address: "Pl. Charles de Gaulle, 75008 Paris, France",
  destination_id: paris.id
)
img_arc_de_triomphe = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179698/development/arc_de_triomphe.jpg")
arc_de_triomphe.photo.attach(io: img_arc_de_triomphe, filename: "arc_de_triomphe.jpg", content_type: "image/jpg")

# 10
montmartre = Activity.create(
  name: "Montmartre Village",
  duration: 240,
  cost: rand(30..50),
  address: "Montmartre, Blanche/Pigalle",
  destination_id: paris.id
)
img_montmartre = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179698/development/montmartre.jpg")
montmartre.photo.attach(io: img_montmartre, filename: "montmartre.jpg", content_type: "image/jpg")

# 11
sacre_coeur = Activity.create(
  name: "Sacre-Coeur",
  duration: 120,
  cost: 6,
  address: "Parvis du Sacré-Coeur - 35 rue du Chevalier de la Barre - 75018 Paris",
  destination_id: paris.id
)
img_sacre_coeur = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689179698/development/sacre_coeur.jpg")
sacre_coeur.photo.attach(io: img_sacre_coeur, filename: "sacre_coeur.jpg", content_type: "image/jpg")

# 12
moulin_rouge = Activity.create(
  name: "Moulin Rouge",
  duration: 150,
  cost: 77,
  address: "Moulin Rouge. 82 boulevard de Clichy - 75018 Paris. Montmartre",
  destination_id: paris.id
)
img_moulin_rouge = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/moulin_rouge.jpg")
moulin_rouge.photo.attach(io: img_moulin_rouge, filename: "moulin_rouge.jpg", content_type: "image/jpg")

# 13
champs_elysees = Activity.create(
  name: "Champs-Élysées",
  duration: 720,
  cost: 88,
  address: "Champs-Élysées, 75008 Paris, France",
  destination_id: paris.id
)
img_champs_elysees = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/champs_elysees.jpg")
champs_elysees.photo.attach(io: img_champs_elysees, filename: "champs_elysees.jpg", content_type: "image/jpg")

puts 'Creating Rio Activities...'
# 7 Rio activities

# 1
jardim_botanico = Activity.create(
  name: "Jardim Botânico do Rio de Janeiro",
  duration: 150,
  cost: 10,
  address: "R. Jardim Botânico, 1008 - Jardim Botânico, Rio de Janeiro, 22460-030",
  destination_id: rio.id
)
img_jardim_botanico = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/jardim_botanico.jpg")
jardim_botanico.photo.attach(io: img_jardim_botanico, filename: "jardim_botanico.jpg", content_type: "image/jpg")

# 2
christ_the_redeemer = Activity.create(
  name: "Christ the Redeemer",
  duration: 120,
  cost: 5,
  address: "Parque Nacional da Tijuca - Alto da Boa Vista, Rio de Janeiro",
  destination_id: rio.id
)
img_christ_the_redeemer = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/christ_the_redeemer.jpg")
christ_the_redeemer.photo.attach(io: img_christ_the_redeemer, filename: "christ_the_redeemer.jpg", content_type: "image/jpg")

# 3
escadaria_selaron = Activity.create(
  name: "Escadaria Selarón",
  duration: 60,
  cost: 0,
  address: "Parque Nacional da Tijuca - Alto da Boa Vista, Rio de Janeiro",
  destination_id: rio.id
)
img_escadaria_selaron = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/escadaria_selaron.jpg")
escadaria_selaron.photo.attach(io: img_escadaria_selaron, filename: "escadaria_selaron.jpg", content_type: "image/jpg")

# 4
parque_lage = Activity.create(
  name: "Parque Lage",
  duration: 120,
  cost: 0,
  address: "R. Jardim Botânico, 414 - Jardim Botânico, Rio de Janeiro - RJ, 22461-000",
  destination_id: rio.id
)
img_parque_lage = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/parque_lage.jpg")
parque_lage.photo.attach(io: img_parque_lage, filename: "parque_lage.jpg", content_type: "image/jpg")

# 5
ipanema_beach = Activity.create(
  name: "Ipanema Beach",
  duration: 120,
  cost: 0,
  address: "Ipanema, State of Rio de Janeiro, Brazil",
  destination_id: rio.id
)
img_ipanema_beach = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/ipanema_beach.jpg")
ipanema_beach.photo.attach(io: img_ipanema_beach, filename: "ipanema_beach.jpg", content_type: "image/jpg")

# 6
copacabana_beach = Activity.create(
  name: "Copacabana Beach",
  duration: 120,
  cost: 0,
  address: "Copacabana, State of Rio de Janeiro, Brazil",
  destination_id: rio.id
)
img_copacabana_beach = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/copacabana_beach.jpg")
copacabana_beach.photo.attach(io: img_copacabana_beach, filename: "copacabana_beach.jpg", content_type: "image/jpg")

# 7
churrascaria_palace = Activity.create(
  name: "Churrascaria Palace",
  duration: 90,
  cost: 25,
  address: "R. Rodolfo Dantas, 16 - Copacabana, Rio de Janeiro - RJ, 22020-040",
  destination_id: rio.id
)
img_churrascaria_palace = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/churrascaria_palace.jpg")
churrascaria_palace.photo.attach(io: img_churrascaria_palace, filename: "churrascaria_palace.jpg", content_type: "image/jpg")

puts 'Creating NYC Activities...'
# 6 NYC activities

# 1
statue_of_liberty = Activity.create(
  name: "Statue of Liberty",
  duration: 180,
  cost: 25,
  address: "Statue of Liberty, New York, NY 10004",
  destination_id: nyc.id
)
img_statue_of_liberty = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/statue_of_liberty.jpg")
statue_of_liberty.photo.attach(io: img_statue_of_liberty, filename: "statue_of_liberty.jpg", content_type: "image/jpg")

# 2
empire_state_building = Activity.create(
  name: "Empire State Building",
  duration: 120,
  cost: 50,
  address: "20 W 34th St., New York, NY 10001, United States",
  destination_id: nyc.id
)
img_empire_state_building = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/empire_state_building.jpg")
empire_state_building.photo.attach(io: img_empire_state_building, filename: "empire_state_building.jpg", content_type: "image/jpg")

# 3
central_park = Activity.create(
  name: "Central Park",
  duration: 120,
  cost: 0,
  address: "Central Park, New York, NY",
  destination_id: nyc.id
)
img_central_park = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/central_park.jpg")
central_park.photo.attach(io: img_central_park, filename: "central_park.jpg", content_type: "image/jpg")

# 4
times_square = Activity.create(
  name: "Times Square",
  duration: 60,
  cost: 0,
  address: "Times Square, Manhattan, NY 10036",
  destination_id: nyc.id
)
img_times_square = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/times_square.jpg")
times_square.photo.attach(io: img_times_square, filename: "times_square.jpg", content_type: "image/jpg")

# 5
brooklyn_bridge = Activity.create(
  name: "Brooklyn Bridge",
  duration: 60,
  cost: 0,
  address: "Brooklyn Bridge, New York, NY 10038",
  destination_id: nyc.id
)
img_brooklyn_bridge = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/brooklyn_bridge.jpg")
brooklyn_bridge.photo.attach(io: img_brooklyn_bridge, filename: "brooklyn_bridge.jpg", content_type: "image/jpg")

# 6
rockefeller_center = Activity.create(
  name: "Rockefeller Center",
  duration: 150,
  cost: 35,
  address: "45 Rockefeller Plaza, New York, NY 10111, United States",
  destination_id: nyc.id
)
img_rockefeller_center = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/rockefeller_center.jpg")
rockefeller_center.photo.attach(io: img_rockefeller_center, filename: "rockefeller_center.jpg", content_type: "image/jpg")

puts 'Creating Barcelona Activities...'
# 5 Barcelona activities

# 1
cathedral_of_barcelona = Activity.create(
  name: "Cathedral of Barcelona",
  duration: 120,
  cost: 8,
  address: "Pla de la Seu, s/n, 08002 Barcelona",
  destination_id: barcelona.id
)
img_cathedral_of_barcelona = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/cathedral_of_barcelona.jpg")
cathedral_of_barcelona.photo.attach(io: img_cathedral_of_barcelona, filename: "cathedral_of_barcelona.jpg", content_type: "image/jpg")

# 2
santa_maria_del_mar = Activity.create(
  name: "Basilica of Santa Maria del Mar",
  duration: 120,
  cost: 0,
  address: "Plaça de Santa Maria, 1, 08003 Barcelona",
  destination_id: barcelona.id
)
img_santa_maria_del_mar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/santa_maria_del_mar.jpg")
santa_maria_del_mar.photo.attach(io: img_santa_maria_del_mar, filename: "santa_maria_del_mar.jpg", content_type: "image/jpg")

# 3
casa_batllo = Activity.create(
  name: "Casa Batlló",
  duration: 120,
  cost: 30,
  address: "Pg. de Gràcia, 43, 08007 Barcelona",
  destination_id: barcelona.id
)
img_casa_batllo = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/casa_batllo.jpg")
casa_batllo.photo.attach(io: img_casa_batllo, filename: "casa_batllo.jpg", content_type: "image/jpg")

# 4
camp_nou = Activity.create(
  name: "Camp Nou - Stadium Tour",
  duration: 120,
  cost: 30,
  address: "C/ d'Arístides Maillol, 12, 08028 Barcelona",
  destination_id: barcelona.id
)
img_camp_nou = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/camp_nou.jpg")
camp_nou.photo.attach(io: img_camp_nou, filename: "camp_nou.jpg", content_type: "image/jpg")

# 5
park_guell = Activity.create(
  name: "Park Güell",
  duration: 120,
  cost: 10,
  address: "Park Güell, 08024 Barcelona",
  destination_id: barcelona.id
)
img_park_guell = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/park_guell.jpg")
park_guell.photo.attach(io: img_park_guell, filename: "park_guell.jpg", content_type: "image/jpg")

puts 'Creating Tokyo Activities...'
# 6 Tokyo activities

# 1
tokyo_skytree = Activity.create(
  name: "Tokyo Skytree",
  duration: 120,
  cost: 10,
  address: "1 Chome-1-2 Oshiage, Sumida City, Tokyo 131-0045",
  destination_id: tokyo.id
)
img_tokyo_skytree = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/tokyo_skytree.jpg")
tokyo_skytree.photo.attach(io: img_tokyo_skytree, filename: "tokyo_skytree.jpg", content_type: "image/jpg")

# 2
tokyo_tower = Activity.create(
  name: "Tokyo Tower",
  duration: 120,
  cost: 7,
  address: "4 Chome-2-8 Shibakoen, Minato City, Tokyo 105-0011",
  destination_id: tokyo.id
)
img_tokyo_tower = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/tokyo_tower.jpg")
tokyo_tower.photo.attach(io: img_tokyo_tower, filename: "tokyo_tower.jpg", content_type: "image/jpg")

# 3
shinjuku_gyoen = Activity.create(
  name: "Shinjuku Gyoen National Garden",
  duration: 180,
  cost: 3,
  address: "11 Naitomachi, Shinjuku City, Tokyo 160-0014",
  destination_id: tokyo.id
)
img_shinjuku_gyoen = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/shinjuku_gyoen.jpg")
shinjuku_gyoen.photo.attach(io: img_shinjuku_gyoen, filename: "shinjuku_gyoen.jpg", content_type: "image/jpg")

# 4
meiji_jingu = Activity.create(
  name: "Meiji Jingu",
  duration: 180,
  cost: 0,
  address: "1-1 Yoyogikamizonocho, Shibuya City, Tokyo 151-8557",
  destination_id: tokyo.id
)
img_meiji_jingu = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/meiji_jingu.jpg")
meiji_jingu.photo.attach(io: img_meiji_jingu, filename: "meiji_jingu.jpg", content_type: "image/jpg")

# 5
senso_ji = Activity.create(
  name: "Sensō-ji",
  duration: 150,
  cost: 0,
  address: "2 Chome-3-1 Asakusa, Taito City, Tokyo 111-0032",
  destination_id: tokyo.id
)
img_senso_ji = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/senso_ji.jpg")
senso_ji.photo.attach(io: img_senso_ji, filename: "senso_ji.jpg", content_type: "image/jpg")

# 6
ghibli_museum = Activity.create(
  name: "Ghibli Museum",
  duration: 150,
  cost: 7,
  address: "1 Chome-1-83 Shimorenjaku, Mitaka, Tokyo 181-0013",
  destination_id: tokyo.id
)
img_ghibli_museum = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/ghibli_museum.jpg")
ghibli_museum.photo.attach(io: img_ghibli_museum, filename: "ghibli_museum.jpg", content_type: "image/jpg")

puts 'Creating Toronto Activities...'
# 8 Toronto activities

# 1
cn_tower = Activity.create(
  name: "CN Tower",
  duration: 120,
  cost: 30,
  address: "290 Bremner Blvd, Toronto, ON M5V 3L9",
  destination_id: toronto.id
)
img_cn_tower = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/cn_tower.jpg")
cn_tower.photo.attach(io: img_cn_tower, filename: "cn_tower.jpg", content_type: "image/jpg")

# 2
niagara_falls = Activity.create(
  name: "Niagara Falls",
  duration: 180,
  cost: 25,
  address: "5920 Niagara River Pkwy, Niagara Falls, ON L2E 6X8",
  destination_id: toronto.id
)
img_niagara_falls = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/niagara_falls.jpg")
niagara_falls.photo.attach(io: img_niagara_falls, filename: "niagara_falls.jpg", content_type: "image/jpg")

# 3
toronto_islands = Activity.create(
  name: "Toronto Islands",
  duration: 180,
  cost: 7,
  address: "11 Queens Quay W, Toronto, ON M5J 2H3",
  destination_id: toronto.id
)
img_toronto_islands = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/toronto_islands.jpg")
toronto_islands.photo.attach(io: img_toronto_islands, filename: "toronto_islands.jpg", content_type: "image/jpg")

# 4
distillery_district = Activity.create(
  name: "Distillery District",
  duration: 90,
  cost: 0,
  address: "55 Mill St, Toronto, ON M5A 3C4",
  destination_id: toronto.id
)
img_distillery_district = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/distillery_district.jpg")
distillery_district.photo.attach(io: img_distillery_district, filename: "distillery_district.jpg", content_type: "image/jpg")

# 5
st_lawrence_market = Activity.create(
  name: "St Lawrence Market",
  duration: 60,
  cost: 0,
  address: "St Lawrence Market, Toronto, ON M5E 1C3",
  destination_id: toronto.id
)
img_st_lawrence_market = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/st_lawrence_market.jpg")
st_lawrence_market.photo.attach(io: img_st_lawrence_market, filename: "st_lawrence_market.jpg", content_type: "image/jpg")

# 6
high_park = Activity.create(
  name: "High Park",
  duration: 120,
  cost: 0,
  address: "1873 Bloor St W, Toronto, ON M6R 2Z3",
  destination_id: toronto.id
)
img_high_park = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/high_park.jpg")
high_park.photo.attach(io: img_high_park, filename: "high_park.jpg", content_type: "image/jpg")

# 7
scarborough_bluffs = Activity.create(
  name: "Scarborough Bluffs",
  duration: 180,
  cost: 0,
  address: "1 Brimley Rd. S, Bluffers Pk Rd, Scarborough, ON",
  destination_id: toronto.id
)
img_scarborough_bluffs = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/scarborough_bluffs.jpg")
scarborough_bluffs.photo.attach(io: img_scarborough_bluffs, filename: "scarborough_bluffs.jpg", content_type: "image/jpg")

# 8
woodbine_beach = Activity.create(
  name: "Woodbine Beach",
  duration: 150,
  cost: 0,
  address: "1675 Lake Shore Blvd E, Toronto, ON M4L 3W6",
  destination_id: toronto.id
)
img_woodbine_beach = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/woodbine_beach.jpg")
woodbine_beach.photo.attach(io: img_woodbine_beach, filename: "woodbine_beach.jpg", content_type: "image/jpg")

puts 'Creating Rome Activities...'
# 5 Rome activities

# 1
colosseum = Activity.create(
  name: "Colosseum",
  duration: 120,
  cost: 15,
  address: "Piazza del Colosseo, 1, 00184 Roma RM",
  destination_id: rome.id
)
img_colosseum = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/colosseum.jpg")
colosseum.photo.attach(io: img_colosseum, filename: "colosseum.jpg", content_type: "image/jpg")

# 2
trevi_fountain = Activity.create(
  name: "Trevi Fountain",
  duration: 90,
  cost: 0,
  address: "Piazza di Trevi, 00187 Roma RM",
  destination_id: rome.id
)
img_trevi_fountain = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/trevi_fountain.jpg")
trevi_fountain.photo.attach(io: img_trevi_fountain, filename: "trevi_fountain.jpg", content_type: "image/jpg")

# 3
basilica_di_san_pietro = Activity.create(
  name: "Basilica di San Pietro",
  duration: 90,
  cost: 0,
  address: "Piazza San Pietro, 00120 Città del Vaticano, Vatican City",
  destination_id: rome.id
)
img_basilica_di_san_pietro = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/basilica_di_san_pietro.jpg")
basilica_di_san_pietro.photo.attach(io: img_basilica_di_san_pietro, filename: "basilica_di_san_pietro.jpg", content_type: "image/jpg")

# 4
sistine_chapel = Activity.create(
  name: "Sistine Chapel",
  duration: 120,
  cost: 15,
  address: "Sistine Chapel, 00120 Vatican City",
  destination_id: rome.id
)
img_sistine_chapel = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/sistine_chapel.jpg")
sistine_chapel.photo.attach(io: img_sistine_chapel, filename: "sistine_chapel.jpg", content_type: "image/jpg")

# 5
pantheon = Activity.create(
  name: "Pantheon",
  duration: 60,
  cost: 0,
  address: "Piazza della Rotonda, 00186 Roma RM",
  destination_id: rome.id
)
img_pantheon = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/pantheon.jpg")
pantheon.photo.attach(io: img_pantheon, filename: "pantheon.jpg", content_type: "image/jpg")

puts 'Creating Amsterdam Activities...'
# 5 Amsterdam activities

# 1
van_gogh_museum = Activity.create(
  name: "Van Gogh Museum",
  duration: 150,
  cost: 20,
  address: "Museumplein 6, 1071 DJ Amsterdam, Netherlands",
  destination_id: amsterdam.id
)
img_van_gogh_museum = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/van_gogh_museum.jpg")
van_gogh_museum.photo.attach(io: img_van_gogh_museum, filename: "van_gogh_museum.jpg", content_type: "image/jpg")

# 2
anne_frank_house = Activity.create(
  name: "Anne Frank House",
  duration: 150,
  cost: 15,
  address: "Westermarkt 20, 1016 GV Amsterdam",
  destination_id: amsterdam.id
)
img_anne_frank_house = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/anne_frank_house.jpg")
anne_frank_house.photo.attach(io: img_anne_frank_house, filename: "anne_frank_house.jpg", content_type: "image/jpg")

# 3
vondelpark = Activity.create(
  name: "Vondelpark",
  duration: 180,
  cost: 0,
  address: "Vondelpark, Amsterdam",
  destination_id: amsterdam.id
)
img_vondelpark = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/vondelpark.jpg")
vondelpark.photo.attach(io: img_vondelpark, filename: "vondelpark.jpg", content_type: "image/jpg")

# 4
rijksmuseum = Activity.create(
  name: "Rijksmuseum",
  duration: 120,
  cost: 23,
  address: "Museumstraat 1, 1071 XX Amsterdam",
  destination_id: amsterdam.id
)
img_rijksmuseum = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/rijksmuseum.jpg")
rijksmuseum.photo.attach(io: img_rijksmuseum, filename: "rijksmuseum.jpg", content_type: "image/jpg")

# 5
bike_rental = Activity.create(
  name: "A-Bike Rental & Tours",
  duration: 210,
  cost: 15,
  address: "A-Bike Rental & Tours, Tesselschadestraat 1E, 1054 ET Amsterdam",
  destination_id: amsterdam.id
)
img_bike_rental = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/bike_rental.jpg")
bike_rental.photo.attach(io: img_bike_rental, filename: "bike_rental.jpg", content_type: "image/jpg")

puts 'Creating Berlin Activities...'
# 6 Berlin activities

# 1
brandenburg_gate = Activity.create(
  name: "Brandenburg Gate",
  duration: 60,
  cost: 0,
  address: "Brandenburg Gate, Pariser Platz, 10117 Berlin",
  destination_id: berlin.id
)
img_brandenburg_gate = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/brandenburg_gate.jpg")
brandenburg_gate.photo.attach(io: img_brandenburg_gate, filename: "brandenburg_gate.jpg", content_type: "image/jpg")

# 2
jewish_memorial = Activity.create(
  name: "Jewish Memorial",
  duration: 60,
  cost: 0,
  address: "Jewish Memorial, Cora-Berliner-Straße 1, 10117 Berlin",
  destination_id: berlin.id
)
img_jewish_memorial = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/jewish_memorial.jpg")
jewish_memorial.photo.attach(io: img_jewish_memorial, filename: "jewish_memorial.jpg", content_type: "image/jpg")

# 3
reichstag_building = Activity.create(
  name: "Reichstag Building",
  duration: 90,
  cost: 0,
  address: "Reichstag Building, Platz der Republik 1, 11011 Berlin",
  destination_id: berlin.id
)
img_reichstag_building = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/reichstag_building.jpg")
reichstag_building.photo.attach(io: img_reichstag_building, filename: "reichstag_building.jpg", content_type: "image/jpg")

# 4
berlin_wall_memorial = Activity.create(
  name: "Berlin Wall Memorial",
  duration: 90,
  cost: 0,
  address: "Berlin Wall Memorial, Platz der Republik 1, 11011 Berlin",
  destination_id: berlin.id
)
img_berlin_wall_memorial = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/berlin_wall_memorial.jpg")
berlin_wall_memorial.photo.attach(io: img_berlin_wall_memorial, filename: "berlin_wall_memorial.jpg", content_type: "image/jpg")

# 5
mauerpark = Activity.create(
  name: "Mauerpark",
  duration: 120,
  cost: 0,
  address: "Mauerpark, Gleimstraße 55, 10437 Berlin",
  destination_id: berlin.id
)
img_mauerpark = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/mauerpark.jpg")
mauerpark.photo.attach(io: img_mauerpark, filename: "mauerpark.jpg", content_type: "image/jpg")

# 6
berghain = Activity.create(
  name: "Berghain",
  duration: 180,
  cost: 20,
  address: "Berghain, Am Wriezener bhf, 10243 Berlin",
  destination_id: berlin.id
)
img_berghain = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178931/development/berghain.jpg")
berghain.photo.attach(io: img_berghain, filename: "berghain.jpg", content_type: "image/jpg")
