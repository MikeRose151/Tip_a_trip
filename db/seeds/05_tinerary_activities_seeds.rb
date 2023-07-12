puts "Cleaning database"
ItineraryActivity.destroy_all

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
puts 'Finished!'
