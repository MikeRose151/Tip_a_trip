puts 'Creating 20 fake Itineraries...'

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

itinerary_1 = Itinerary.create!(
  title: "Fun Time",
  destination_id: tokyo.id,
  start_date: Date.new(2022, 5, 8),
  end_date: Date.new(2022, 5, 26),
  user: User.all[2],
  public: true
)

itinerary_1.original_itinerary_id = itinerary_1.id
itinerary_1.save!

itinerary_2 = Itinerary.create!(
  title: "Cultural Visit",
  destination_id: paris.id,
  start_date: Date.new(2022, 9, 26),
  end_date: Date.new(2022, 9, 30),
  user: User.all[1],
  public: true
)

itinerary_2.original_itinerary_id = itinerary_2.id
itinerary_2.save!

itinerary_4 = Itinerary.create!(
  title: "First Time Visit",
  destination_id: london.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2],
  public: true
)

itinerary_4.original_itinerary_id = itinerary_4.id
itinerary_4.save!

itinerary_5 = Itinerary.create!(
  title: "Basic Tourist",
  destination_id: berlin.id,
  start_date: Date.new(2023, 1, 4),
  end_date: Date.new(2023, 1, 7),
  user: User.all[2],
  public: true
)

itinerary_5.original_itinerary_id = itinerary_1.id
itinerary_5.save!

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

itinerary_3 = Itinerary.create!(
  title: "Historical Trip",
  destination_id: rome.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2],
  public: false
)

itinerary_3.original_itinerary_id = itinerary_12.id
itinerary_3.save!


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

itinerary_21 = Itinerary.create!(
  title: "Rio Carnival Trip",
  destination_id: rio.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2],
  public: false
)

itinerary_21.original_itinerary_id = itinerary_17.id
itinerary_21.save!

itinerary_22 = Itinerary.create!(
  title: "Tokyo Tour Trip ",
  destination_id: tokyo.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2],
  public: false
)


itinerary_22.original_itinerary_id = itinerary_22.id
itinerary_22.save!

itinerary_23 = Itinerary.create!(
  title: "New York Music Tour",
  destination_id: nyc.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2],
  public: false
)


itinerary_23.original_itinerary_id = itinerary_5.id
itinerary_23.save!

itinerary_24 = Itinerary.create!(
  title: "Art Trip",
  destination_id: toronto.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[2],
  public: false
)


itinerary_24.original_itinerary_id = itinerary_24.id
itinerary_24.save!

itinerary_25 = Itinerary.create!(
  title: "Jazz Tour",
  destination_id: london.id,
  start_date: Date.new(2023, 2, 3),
  end_date: Date.new(2023, 2, 6),
  user: User.all[9],
  public: false
)


itinerary_25.original_itinerary_id = itinerary_25.id
itinerary_25.save!
