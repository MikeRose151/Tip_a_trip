require 'faker'
require 'open-uri'

puts "Cleaning database"
ItineraryActivity.destroy_all
Favourite.destroy_all
Itinerary.destroy_all
Activity.destroy_all
User.destroy_all

puts 'Creating 10 fake Users including test, Lazy Susan, and Tripper Trevor...'

testtickle = User.create!(
  email: "test@tat.com",
  password: 123456,
  username: "Test Tickle"
)

testtickle_avatar = URI.open("https://www.cedars-sinai.org/content/dam/cedars-sinai/blog/2019/06/SelfieSafety.jpg")
testtickle.photo.attach(io: testtickle_avatar, filename: "testtickle.jpg", content_type: "image/jpg")



ls = User.create!(
  email: "susan@tat.com",
  password: 123456,
  username: "Lazy Susan"
)

ls_avatar = URI.open("https://hellogiggles.com/wp-content/uploads/sites/7/2016/11/22/IMG_2531.jpg?quality=82&strip=all")
ls.photo.attach(io: ls_avatar, filename: "ls.jpg", content_type: "image/jpg")

tt = User.create!(
  email: "trevor@tat.com",
  password: 123456,
  username: "Tripper Trevor"
)

tt_avatar = URI.open("https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
tt.photo.attach(io: tt_avatar, filename: "tt.jpg", content_type: "image/jpg")

mm = User.create!(
  email: "michael@tat.com",
  password: 123456,
  username: "Magic Mike"
)

mm_avatar = URI.open("https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg")
mm.photo.attach(io: mm_avatar, filename: "mm.jpg", content_type: "image/jpg")

tommy = User.create!(
  email: "tommy@tat.com",
  password: 123456,
  username: "Tipper Tommy"
)

tommy_avatar = URI.open("https://i.pinimg.com/originals/75/33/3c/75333c44a7adb9cf15af954d1ca56198.jpg")
tommy.photo.attach(io: tommy_avatar, filename: "mm.jpg", content_type: "image/jpg")

gg = User.create!(
  email: "georgia@tat.com",
  password: 123456,
  username: "Georgia Grace"
)

gg_avatar = URI.open("https://img.freepik.com/free-photo/portrait-young-beautiful-afro-american-woman-taking-selfie-outdoors-street_58466-12263.jpg")
gg.photo.attach(io: gg_avatar, filename: "gg.jpg", content_type: "image/jpg")


fara = User.create!(
  email: "Fara@tat.com",
  password: 123456,
  username: "Fara B"
)

fara_avatar = URI.open("https://stories.isu.pub/61029910/images/13_original_file_I3.jpg")
fara.photo.attach(io: fara_avatar, filename: "fara.jpg", content_type: "image/jpg")

nt = User.create!(
  email: "Nnamdi@tat.com",
  password: 123456,
  username: "Nnamdi Travels"
)

nt_avatar = URI.open("https://i2-prod.dailyrecord.co.uk/incoming/article24562995.ece/ALTERNATES/s1200c/0_AFC-Bournemouth-Training-Session.jpg")
nt.photo.attach(io: nt_avatar, filename: "nt.jpg", content_type: "image/jpg")

dt = User.create!(
  email: "Dee@tat.com",
  password: 123456,
  username: "Dee Tips"
)

dt_avatar = URI.open("https://i2-prod.birminghammail.co.uk/incoming/article23092740.ece/ALTERNATES/s1200c/0_DQP_BEM_090518DEE_29JPG.jpg")
dt.photo.attach(io: dt_avatar, filename: "dt.jpg", content_type: "image/jpg")

pt = User.create!(
  email: "Pedro@tat.com",
  password: 123456,
  username: "Pedro Tasca"
)

pt_avatar = URI.open("https://www.intrepidescape.com/wp-content/gallery/selfie-success/cache/Steps-to-Selfie-Success-1-4.jpg-nggid03848-ngg0dyn-0x0x100-00f0w010c010r110f110r010t010.jpg")
pt.photo.attach(io: pt_avatar, filename: "pt.jpg", content_type: "image/jpg")

puts 'Creating 10 Cities...'

london = Destination.create(
  city: "London"
)

file_29 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678454278/London-City-Travel-Guide-Vogue-India_kku9bw.webp")
london.photo.attach(io: file_29, filename:"london.jpg", content_type: "image/jpg")

paris = Destination.create(
  city: "Paris"
)

file_30 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678454598/pD3bsKPrjsqNiFDGRL5oq6_mvwdao.jpg")
paris.photo.attach(io: file_30, filename:"london.jpg", content_type: "image/jpg")

rio = Destination.create(
  city: "Rio"
)

file_31 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678454979/rio_lfum1h.webp")
rio.photo.attach(io: file_31, filename:"london.jpg", content_type: "image/jpg")

nyc = Destination.create(
  city: "New York City"
)

file_32 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678455145/View_of_Empire_State_Building_from_Rockefeller_Center_New_York_City_dllu__cropped_w9yxij.jpg")
nyc.photo.attach(io: file_32, filename:"london.jpg", content_type: "image/jpg")

barcelona = Destination.create(
  city: "Barcelona"
)

file_33 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678455342/La-Rambla__2018_GettyImages-900268446_latzqi.webp")
barcelona.photo.attach(io: file_33, filename:"london.jpg", content_type: "image/jpg")

tokyo = Destination.create(
  city: "Tokyo"
)

file_34 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678455513/Tokyo-2021-GettyImages-1208124099_csahos.webp")
tokyo.photo.attach(io: file_34, filename:"london.jpg", content_type: "image/jpg")

toronto = Destination.create(
  city: "Toronto"
)

file_35 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678455675/167_3_2254_tif_medium_7465353d-756d-4e13-b610-d938dde974a5_av9df3.jpg")
toronto.photo.attach(io: file_35, filename:"london.jpg", content_type: "image/jpg")

rome = Destination.create(
  city: "Rome"
)

file_36 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678455946/rome-attractions-experience-cityscape-image-guide_x9bbes.webp")
rome.photo.attach(io: file_36, filename:"london.jpg", content_type: "image/jpg")

amsterdam = Destination.create(
  city: "Amsterdam"
)

file_37 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678456276/iStock-516188849_zpyq2u.avif")
amsterdam.photo.attach(io: file_37, filename:"london.jpg", content_type: "image/jpg")

berlin = Destination.create(
  city: "Berlin"
)

file_38 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678456375/berlin_ywdgzj.jpg")
berlin.photo.attach(io: file_38, filename:"london.jpg", content_type: "image/jpg")

puts 'Creating 12 London Activities and 15 Paris Activities...'

londoneye = Activity.create(
    name: "London Eye",
    duration: rand(30..180),
    cost: rand(0..50),
    address: "London Eye, Riverside Building, County Hall, London SE1 7PB",
    destination_id: london.id
)

file_1 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678371750/london_eye_b439jp.jpg")
    londoneye.photo.attach(io: file_1, filename:"skiing.jpg", content_type: "image/jpg")

marketvisit = Activity.create(
  name: "Borough Market visit",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "London, 8 Southwark St, London SE1 1TL",
  destination_id: london.id
)

file_2 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678372872/bruno-martins-dhe2qsXN_2o-unsplash_k9h8we.jpg")
    marketvisit.photo.attach(io: file_2, filename:"market.jpg", content_type: "image/jpg")

ballpit = Activity.create(
  name: "Ballie Ballerson Cocktail Bar",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "97-113 Curtain Rd, London EC2A 3BS",
  destination_id: london.id
)

file_3 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678373134/ballpit_jlskvq.jpg")
    ballpit.photo.attach(io: file_3, filename:"ballpit.jpg", content_type: "image/jpg")

londondungeons = Activity.create(
  name: "London Dungeons",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Riverside Building, County Hall, Westminster Bridge Rd, London SE1 7PB",
  destination_id: london.id
)

file_4 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678373599/98_wdqfe2.jpg")
    londondungeons.photo.attach(io: file_4, filename:"londondungeons.jpg", content_type: "image/jpg")

madametussauds = Activity.create(
  name: "Madame Tussauds",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Marylebone Rd, London NW1 5LR",
  destination_id: london.id
)

file_5 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374173/madame-tussauds-london-3_z4fxrg.webp")
madametussauds.photo.attach(io: file_5, filename:"madame.jpg", content_type: "image/jpg")

lighterman = Activity.create(
  name: "The Lighterman King's Cross",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "3 Granary Square, London N1C 4BH",
  destination_id: london.id
)

file_6 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374602/OPUMO-Lighterman-Banner_gexxwl.webp")
lighterman.photo.attach(io: file_6, filename:"madame.jpg", content_type: "image/jpg")

shard = Activity.create(
  name: "The Shard, Aqua Shard Restaurant",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "32 London Bridge St, London SE1 9SG",
  destination_id: london.id
)

file_7 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678374924/shard_ma2rjq.jpg")
shard.photo.attach(io: file_7, filename:"madame.jpg", content_type: "image/jpg")

feeteast = Activity.create(
  name: "93 Feet East Club",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "150 Brick Ln, London E1 6QL",
  destination_id: london.id
)

file_8 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678375469/93-the-courtyard-03_ssqxr3.jpg")
feeteast.photo.attach(io: file_8, filename:"madame.jpg", content_type: "image/jpg")

tatemodern = Activity.create(
  name: "Tate Modern",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Bankside, London SE1 9TG",
  destination_id: london.id
)

file_9 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678375915/tate_cfqmzb.jpg")
tatemodern.photo.attach(io: file_9, filename:"madame.jpg", content_type: "image/jpg")

lewagondemo = Activity.create(
  name: "Le Wagon Demo Day",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Shoreditch Stables, North, 138 Kingsland Rd, London E2 8DY",
  destination_id: london.id
)

file_10 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678376163/Le-Wagon-cover_jugohq.jpg")
lewagondemo.photo.attach(io: file_10, filename:"madame.jpg", content_type: "image/jpg")

toweroflondon = Activity.create(
  name: "Tower of London Tour",
  duration: rand(30..180),
  cost: rand(10..50),
  address: "London EC3N 4AB",
  destination_id: london.id
)

file_11 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678448339/tower_uzand4.jpg")
toweroflondon.photo.attach(io: file_11, filename:"madame.jpg", content_type: "image/jpg")

axethrowing= Activity.create(
  name: "Bad Axe Throwing - Wembley Park",
  duration: rand(30..180),
  cost: rand(10..50),
  address: "Boxpark, 18 Olympic Way, Wembley HA9 0JT",
  destination_id: london.id
)

file_12 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678448393/Bad_Axe_Throwing_in_Boxpark_Wembl.2e16d0ba.fill-1200x630_ohaso5.jpg")
axethrowing.photo.attach(io: file_12, filename:"madame.jpg", content_type: "image/jpg")

eiffeltower = Activity.create(
  name: "Eiffel Tower",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Champ de Mars, 5 Av. Anatole France, 75007 Paris, France",
  destination_id: paris.id
)

file_13 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678377318/eiffel_xe5juv.webp")
eiffeltower.photo.attach(io: file_13, filename:"madame.jpg", content_type: "image/jpg")

louvre = Activity.create(
  name: "The Louvre",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Rue de Rivoli, 75001 Paris, France",
  destination_id: paris.id
)

file_14 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678377690/louvre_ookyvj.jpg")
louvre.photo.attach(io: file_14, filename:"madame.jpg", content_type: "image/jpg")

gardens = Activity.create(
  name: "Luxembourg Gardens",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Luxembourg Gardens, 75006 Paris, France",
  destination_id: paris.id
)

file_15 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678378217/lux_psey0d.webp")
gardens.photo.attach(io: file_15, filename:"madame.jpg", content_type: "image/jpg")

rivertour = Activity.create(
  name: "Bateaux Parisiens Seine River Gourmet Lunch & Sightseeing Cruise",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Port de la Bourdonnais, 75007 Paris, France",
  destination_id: paris.id
)

file_16 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678378986/145_rqtxhb.jpg")
rivertour.photo.attach(io: file_16, filename:"madame.jpg", content_type: "image/jpg")

panthean = Activity.create(
  name: "The Panthéon",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Pl. du Panthéon, 75005 Paris, France",
  destination_id: paris.id
)
  file_17 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678379458/Pantheon-Paris_iksb1k.webp")
  panthean.photo.attach(io: file_17, filename:"madame.jpg", content_type: "image/jpg")

ombres = Activity.create(
  name: "Les Ombres Restaurant",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "27 Quai Jacques Chirac, 75007 Paris, France",
  destination_id: paris.id
)
file_18 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678379827/IMG_6339_gn8nri.jpg")
ombres.photo.attach(io: file_18, filename:"madame.jpg", content_type: "image/jpg")

orsay = Activity.create(
  name: "Orsay Museum",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "1 Rue de la Légion d'Honneur, 75007 Paris, France",
  destination_id: paris.id
)

file_19 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678380039/diane-picchiottino-eDv8b9Fa-tA-unsplash_gismdu.jpg")
orsay.photo.attach(io: file_19, filename:"madame.jpg", content_type: "image/jpg")

chapelle = Activity.create(
  name: "Sainte-Chapelle",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "10 Bd du Palais, 75001 Paris, France",
  destination_id: paris.id
)

file_20 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678380820/SAINTE_CHAPELLE-32_inlwas.jpg")
chapelle.photo.attach(io: file_20, filename:"madame.jpg", content_type: "image/jpg")

disney = Activity.create(
  name: "Disney Land Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Bd de Parc, 77700 Coupvray, France",
  destination_id: paris.id
)

file_21 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381133/63f25c4682440fdf3bb659eb3246b06a-_Disney_6_xm2nvh.png")
disney.photo.attach(io: file_21, filename:"madame.jpg", content_type: "image/jpg")

 segway= Activity.create(
  name: "GO GO Segway tours - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "101 Av. de la Bourdonnais, 75007 Paris, France",
  destination_id: paris.id
)

file_22 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678381976/paris-segway-tours-segway-hero-medium-1_kfklug.jpg")
segway.photo.attach(io: file_22, filename:"madame.jpg", content_type: "image/jpg")

# NEED TO PROPERLY COMPLETE THESE ACTIVITIES

triomphe= Activity.create(
  name: "Arc de Triomphe Tour - Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Pl. Charles de Gaulle, 75008 Paris, France",
  destination_id: paris.id
)

file_23 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678448664/caption_j72fyq.jpg")
triomphe.photo.attach(io: file_23, filename:"madame.jpg", content_type: "image/jpg")

montmartre= Activity.create(
  name: "Montmartre Village",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Montmartre, Blanche/Pigalle",
  destination_id: paris.id
)

file_24 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678449151/what-to-do-in-montmartre_hlbr7r.jpg")
montmartre.photo.attach(io: file_24, filename:"madame.jpg", content_type: "image/jpg")

sacre = Activity.create(
  name: "Sacre-Coeur - The Sacred Heart of Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Parvis du Sacré-Coeur - 35 rue du Chevalier de la Barre - 75018 Paris",
  destination_id: paris.id
)

file_25 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678451147/pexels-constanze-marie-6664684-scaled-1_gewr9v.jpg")
sacre.photo.attach(io: file_25, filename:"madame.jpg", content_type: "image/jpg")

rouge= Activity.create(
  name: "Moulin Rouge",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Moulin Rouge. 82 boulevard de Clichy - 75018 Paris. Montmartre",
  destination_id: paris.id
)

file_26 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678451583/image_vatc9w.jpg")
rouge.photo.attach(io: file_26, filename:"madame.jpg", content_type: "image/jpg")

wine = Activity.create(
  name: "Loire Valley Castles & Wine Tasting Day Trip from Paris",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Loire Valley Castles, France",
  destination_id: paris.id
)

file_27 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678452467/dorian-mongel-PuRFKwR4B2o-unsplash_sa4ego.jpg")
wine.photo.attach(io: file_27, filename:"madame.jpg", content_type: "image/jpg")




bigbustour= Activity.create(
  name: "Big Bus Paris Hop-On Hop-Off Tour",
  duration: rand(30..180),
  cost: rand(0..50),
  address: "Big Bus, 11 Av. de l'Opéra, 75001 Paris, France",
  destination_id: paris.id
)

file_28 = URI.open("https://res.cloudinary.com/dz5xhbsjv/image/upload/v1678453067/58dc21fb-f843-4c6c-9a29-313eefcfb383-10883-paris-big-bus-paris-night-tour-02_p0k9dt.jpg")
bigbustour.photo.attach(io: file_28, filename:"madame.jpg", content_type: "image/jpg")


puts 'Creating 20 fake Itineraries...'

itinerary_1 = Itinerary.create!(
  title: "Fun Time",
  destination_id: tokyo.id,
  start_date: Date.new(2022, 5, 8),
  end_date: Date.new(2022, 5, 26),
  user: User.all[2], # Trevor
  public: true
)

itinerary_1.original_itinerary_id = itinerary_1.id
itinerary_1.save!

itinerary_2 = Itinerary.create!(
  title: "Cultural Visit",
  destination_id: paris.id,
  start_date: Date.new(2022, 9, 26),
  end_date: Date.new(2022, 9, 30),
  user: User.all[2], # Trevor
  public: true
)

itinerary_2.original_itinerary_id = itinerary_2.id
itinerary_2.save!

itinerary_3 = Itinerary.create!(
  title: "Historical Trip",
  destination_id: rome.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2], # Trevor
  public: false
)

itinerary_3.original_itinerary_id = itinerary_3.id
itinerary_3.save!

itinerary_4 = Itinerary.create!(
  title: "First Time Visit",
  destination_id: london.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[3],
  public: true
)

itinerary_4.original_itinerary_id = itinerary_4.id
itinerary_4.save!


itinerary_5 = Itinerary.create!(
  title: "Basic Tourist",
  destination_id: london.id,
  start_date: Date.new(2023, 1, 4),
  end_date: Date.new(2023, 1, 7),
  user: User.all[3],
  public: true
)

itinerary_5.original_itinerary_id = itinerary_5.id
itinerary_5.save!

itinerary_6 = Itinerary.create!(
  title: "Relaxing Time",
  destination_id: barcelona.id,
  start_date: Date.new(2022, 8, 1),
  end_date: Date.new(2022, 8, 5),
  user: User.all[4],
  public: true
)

itinerary_6.original_itinerary_id = itinerary_5.id
# ensuring itn5 and itn6 are the same dates
itinerary_6.save!

itinerary_7 = Itinerary.create!(
  title: "Foodie Trip",
  destination_id: nyc.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 10),
  user: User.all[4],
  public: true
)

itinerary_7.original_itinerary_id = itinerary_7.id
itinerary_7.save!

itinerary_8 = Itinerary.create!(
  title: "First Time Visit",
  destination_id: rome.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 15),
  user: User.all[5],
  public: true
)

itinerary_8.original_itinerary_id = itinerary_8.id
itinerary_8.save!

itinerary_9 = Itinerary.create!(
  title: "Mostly Pastry-Eating",
  destination_id: paris.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 5),
  user: User.all[6],
  public: true
)

itinerary_9.original_itinerary_id = itinerary_9.id
itinerary_9.save!

itinerary_10 = Itinerary.create!(
  title: "Coffee Shops",
  destination_id: amsterdam.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 12),
  user: User.all[6],
  public: true
)

itinerary_10.original_itinerary_id = itinerary_10.id
itinerary_10.save!

itinerary_11 = Itinerary.create!(
  title: "Nights Out",
  destination_id: berlin.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 13),
  user: User.all[7],
  public: true
)

itinerary_11.original_itinerary_id = itinerary_11.id
itinerary_11.save!

itinerary_12 = Itinerary.create!(
  title: "Pizza (and seeing the city)",
  destination_id: rome.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[7],
  public: true
)

itinerary_12.original_itinerary_id = itinerary_12.id
itinerary_12.save!

itinerary_13 = Itinerary.create!(
  title: "Blimey",
  destination_id: london.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[7],
  public: true
)

itinerary_13.original_itinerary_id = itinerary_13.id
itinerary_13.save!

itinerary_14 = Itinerary.create!(
  title: "The Best Dam(n) Itinerary",
  destination_id: amsterdam.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[8],
  public: true
)

itinerary_14.original_itinerary_id = itinerary_14.id
itinerary_14.save!

itinerary_15 = Itinerary.create!(
  title: "Bella Viaggio",
  destination_id: rome.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 5),
  user: User.all[9],
  public: true
)

itinerary_15.original_itinerary_id = itinerary_15.id
itinerary_15.save!

itinerary_16 = Itinerary.create!(
  title: "Best Time in the 6ix",
  destination_id: toronto.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 9),
  user: User.all[9],
  public: true
)

itinerary_16.original_itinerary_id = itinerary_16.id
itinerary_16.save!

itinerary_17 = Itinerary.create!(
  title: "Beaching Around",
  destination_id: rio.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 8),
  user: User.all[8],
  public: true
)

itinerary_17.original_itinerary_id = itinerary_17.id
itinerary_17.save!

itinerary_18 = Itinerary.create!(
  title: "Ich bin ein Berliner",
  destination_id: berlin.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 11),
  user: User.all[9],
  public: true
)

itinerary_18.original_itinerary_id = itinerary_18.id
itinerary_18.save!

itinerary_19 = Itinerary.create!(
  title: "Tea and Crumpets",
  destination_id: london.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 4),
  user: User.all[6],
  public: true
)

itinerary_19.original_itinerary_id = itinerary_19.id
itinerary_19.save!

itinerary_20 = Itinerary.create!(
  title: "Le Meilleur Itinéraire",
  destination_id: paris.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 10),
  user: User.all[4],
  public: true
)

itinerary_20.original_itinerary_id = itinerary_20.id
itinerary_20.save!

puts 'Creating 4 fake Favourites for Test account...'

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

puts 'Creating 10 fake Itinerary Activities for 3-day Paris trip...'

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
