require 'faker'

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
50.times do
  Activity.create!(
    name: Faker::Hobby.activity,
    duration: rand(30..180),
    cost: rand(0..1000),
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}"
  )
end
puts 'Finished!'

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
