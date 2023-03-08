require 'faker'

puts 'Creating 20 fake Users...'
20.times do
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
    name:    Faker::Hobby.activity,
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
    title:    Faker::Company.name,
    destination: city.sample
  )
  
end
puts 'Finished!'
