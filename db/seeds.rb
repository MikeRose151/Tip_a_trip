# Clear database
puts "Cleaning database"
User.destroy_all
Itinerary.destroy_all
ItineraryActivity.destroy_all

# Load seed files
Dir.glob(Rails.root.join('db', 'seeds', '*.rb').to_s).sort.each do |file|
  load file
end
