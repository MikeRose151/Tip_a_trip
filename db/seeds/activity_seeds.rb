puts 'Creating 12 London Activities and 15 Paris Activities...'

londoneye = Activity.create(
    name: "London Eye",
    duration: 30,
    cost: 38,
    address: "London Eye, Riverside Building, County Hall, London SE1 7PB",
    destination_id: london.id
)

file_1 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678371750/london_eye_b439jp.jpg")
    londoneye.photo.attach(io: file_1, filename:"skiing.jpg", content_type: "image/jpg")

marketvisit = Activity.create(
  name: "Borough Market visit",
  duration: 120,
  cost: rand(30..50),
  address: "London, 8 Southwark St, London SE1 1TL",
  destination_id: london.id
)

file_2 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678372872/bruno-martins-dhe2qsXN_2o-unsplash_k9h8we.jpg")
    marketvisit.photo.attach(io: file_2, filename:"market.jpg", content_type: "image/jpg")

ballpit = Activity.create(
  name: "Ballie Ballerson",
  duration: 60,
  cost: rand(30..40),
  address: "97-113 Curtain Rd, London EC2A 3BS",
  destination_id: london.id
)

file_3 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678373134/ballpit_jlskvq.jpg")
    ballpit.photo.attach(io: file_3, filename:"ballpit.jpg", content_type: "image/jpg")

londondungeons = Activity.create(
  name: "London Dungeons",
  duration: 90,
  cost: 27,
  address: "Riverside Building, County Hall, Westminster Bridge Rd, London SE1 7PB",
  destination_id: london.id
)

file_4 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678373599/98_wdqfe2.jpg")
    londondungeons.photo.attach(io: file_4, filename:"londondungeons.jpg", content_type: "image/jpg")

madametussauds = Activity.create(
  name: "Madame Tussauds",
  duration: 60,
  cost: 32,
  address: "Marylebone Rd, London NW1 5LR",
  destination_id: london.id
)

file_5 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374173/madame-tussauds-london-3_z4fxrg.webp")
madametussauds.photo.attach(io: file_5, filename:"madame.jpg", content_type: "image/jpg")

lighterman = Activity.create(
  name: "The Lighterman",
  duration: 150,
  cost: rand(20..50),
  address: "3 Granary Square, London N1C 4BH",
  destination_id: london.id
)

file_6 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374602/OPUMO-Lighterman-Banner_gexxwl.webp")
lighterman.photo.attach(io: file_6, filename:"madame.jpg", content_type: "image/jpg")

shard = Activity.create(
  name: "The Shard",
  duration: 30,
  cost: 32,
  address: "32 London Bridge St, London SE1 9SG",
  destination_id: london.id
)

file_7 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374924/shard_ma2rjq.jpg")
shard.photo.attach(io: file_7, filename:"madame.jpg", content_type: "image/jpg")

feeteast = Activity.create(
  name: "93 Feet East Club",
  duration: 180,
  cost: rand(20..50),
  address: "150 Brick Ln, London E1 6QL",
  destination_id: london.id
)

file_8 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678375469/93-the-courtyard-03_ssqxr3.jpg")
feeteast.photo.attach(io: file_8, filename:"madame.jpg", content_type: "image/jpg")

tatemodern = Activity.create(
  name: "Tate Modern",
  duration: 120,
  cost: rand(0..10),
  address: "Bankside, London SE1 9TG",
  destination_id: london.id
)

file_9 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678375915/tate_cfqmzb.jpg")
tatemodern.photo.attach(io: file_9, filename:"madame.jpg", content_type: "image/jpg")

lewagondemo = Activity.create(
  name: "Le Wagon Demo Day",
  duration: 240,
  cost: 40,
  address: "Shoreditch Stables, North, 138 Kingsland Rd, London E2 8DY",
  destination_id: london.id
)

file_10 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678376163/Le-Wagon-cover_jugohq.jpg")
lewagondemo.photo.attach(io: file_10, filename:"madame.jpg", content_type: "image/jpg")

toweroflondon = Activity.create(
  name: "Tower of London",
  duration: 60,
  cost: 29,
  address: "London EC3N 4AB",
  destination_id: london.id
)

file_11 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678448339/tower_uzand4.jpg")
toweroflondon.photo.attach(io: file_11, filename:"madame.jpg", content_type: "image/jpg")

axethrowing= Activity.create(
  name: "Bad Axe Throwing",
  duration: 150,
  cost: 32,
  address: "Boxpark, 18 Olympic Way, Wembley HA9 0JT",
  destination_id: london.id
)

file_12 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678448393/Bad_Axe_Throwing_in_Boxpark_Wembl.2e16d0ba.fill-1200x630_ohaso5.jpg")
axethrowing.photo.attach(io: file_12, filename:"madame.jpg", content_type: "image/jpg")

eiffeltower = Activity.create(
  name: "Eiffel Tower",
  duration: 120,
  cost: 15,
  address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris, France",
  destination_id: paris.id
)

file_13 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678377318/eiffel_xe5juv.webp")
eiffeltower.photo.attach(io: file_13, filename:"madame.jpg", content_type: "image/jpg")

louvre = Activity.create(
  name: "The Louvre",
  duration: 180,
  cost: 17,
  address: "Rue de Rivoli, 75001 Paris, France",
  destination_id: paris.id
)

file_14 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678377690/louvre_ookyvj.jpg")
louvre.photo.attach(io: file_14, filename:"madame.jpg", content_type: "image/jpg")

gardens = Activity.create(
  name: "Luxembourg Gardens",
  duration: 60,
  cost: 0,
  address: "Luxembourg Gardens, 75006 Paris, France",
  destination_id: paris.id
)

file_15 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678378217/lux_psey0d.webp")
gardens.photo.attach(io: file_15, filename:"madame.jpg", content_type: "image/jpg")

rivertour = Activity.create(
  name: "Bateaux Parisiens Seine River Cruise",
  duration: 90,
  cost: 15,
  address: "Port de la Bourdonnais, 75007 Paris, France",
  destination_id: paris.id
)

file_16 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678378986/145_rqtxhb.jpg")
rivertour.photo.attach(io: file_16, filename:"madame.jpg", content_type: "image/jpg")

panthean = Activity.create(
  name: "The Panthéon",
  duration: 60,
  cost: 10,
  address: "Pl. du Panthéon, 75005 Paris, France",
  destination_id: paris.id
)
  file_17 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678379458/Pantheon-Paris_iksb1k.webp")
  panthean.photo.attach(io: file_17, filename:"madame.jpg", content_type: "image/jpg")

ombres = Activity.create(
  name: "Les Ombres Restaurant",
  duration: 120,
  cost: 127,
  address: "27 Quai Jacques Chirac, 75007 Paris, France",
  destination_id: paris.id
)
file_18 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678379827/IMG_6339_gn8nri.jpg")
ombres.photo.attach(io: file_18, filename:"madame.jpg", content_type: "image/jpg")

orsay = Activity.create(
  name: "Orsay Museum",
  duration: 120,
  cost: 15,
  address: "1 Rue de la Légion d'Honneur, 75007 Paris, France",
  destination_id: paris.id
)

file_19 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678380039/diane-picchiottino-eDv8b9Fa-tA-unsplash_gismdu.jpg")
orsay.photo.attach(io: file_19, filename:"madame.jpg", content_type: "image/jpg")

chapelle = Activity.create(
  name: "Sainte-Chapelle",
  duration: 60,
  cost: 11,
  address: "10 Bd du Palais, 75001 Paris, France",
  destination_id: paris.id
)

file_20 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678380820/SAINTE_CHAPELLE-32_inlwas.jpg")
chapelle.photo.attach(io: file_20, filename:"madame.jpg", content_type: "image/jpg")

disney = Activity.create(
  name: "Disney Land Paris",
  duration: 2880,
  cost: 62,
  address: "Bd de Parc, 77700 Coupvray, France",
  destination_id: paris.id
)

file_21 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381133/63f25c4682440fdf3bb659eb3246b06a-_Disney_6_xm2nvh.png")
disney.photo.attach(io: file_21, filename:"madame.jpg", content_type: "image/jpg")

 segway= Activity.create(
  name: "GO GO Segway Tour",
  duration: 90,
  cost: 33,
  address: "101 Av. de la Bourdonnais, 75007 Paris, France",
  destination_id: paris.id
)

file_22 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_22, filename:"madame.jpg", content_type: "image/jpg")

# NEED TO PROPERLY COMPLETE THESE ACTIVITIES

triomphe= Activity.create(
  name: "Arc de Triomphe Tour",
  duration: 120,
  cost: 12,
  address: "Pl. Charles de Gaulle, 75008 Paris, France",
  destination_id: paris.id
)

file_23 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678448664/caption_j72fyq.jpg")
triomphe.photo.attach(io: file_23, filename:"madame.jpg", content_type: "image/jpg")

montmartre= Activity.create(
  name: "Montmartre Village",
  duration: 240,
  cost: rand(30..50),
  address: "Montmartre, Blanche/Pigalle",
  destination_id: paris.id
)

file_24 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678449151/what-to-do-in-montmartre_hlbr7r.jpg")
montmartre.photo.attach(io: file_24, filename:"madame.jpg", content_type: "image/jpg")

sacre = Activity.create(
  name: "Sacre-Coeur",
  duration: 120,
  cost: 6,
  address: "Parvis du Sacré-Coeur - 35 rue du Chevalier de la Barre - 75018 Paris",
  destination_id: paris.id
)

file_25 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678451147/pexels-constanze-marie-6664684-scaled-1_gewr9v.jpg")
sacre.photo.attach(io: file_25, filename:"madame.jpg", content_type: "image/jpg")

rouge= Activity.create(
  name: "Moulin Rouge",
  duration: 150,
  cost: 77,
  address: "Moulin Rouge. 82 boulevard de Clichy - 75018 Paris. Montmartre",
  destination_id: paris.id
)

file_26 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678451583/image_vatc9w.jpg")
rouge.photo.attach(io: file_26, filename:"madame.jpg", content_type: "image/jpg")

wine = Activity.create(
  name: "Loire Valley Castles",
  duration: 720,
  cost: 88,
  address: "Loire Valley Castles, France",
  destination_id: paris.id
)

file_27 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678452467/dorian-mongel-PuRFKwR4B2o-unsplash_sa4ego.jpg")
wine.photo.attach(io: file_27, filename:"madame.jpg", content_type: "image/jpg")




bigbustour= Activity.create(
  name: "Big Bus Hop-On Hop-Off Tour",
  duration: 135,
  cost: 37,
  address: "Big Bus, 11 Av. de l'Opéra, 75001 Paris, France",
  destination_id: paris.id
)

file_28 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678453067/58dc21fb-f843-4c6c-9a29-313eefcfb383-10883-paris-big-bus-paris-night-tour-02_p0k9dt.jpg")
bigbustour.photo.attach(io: file_28, filename:"madame.jpg", content_type: "image/jpg")
