require 'open-uri'

puts 'Creating 10 Cities...'

london = Destination.create(
  city: "London"
)

file_29 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689185334/development/london.webp")
london.photo.attach(io: file_29, filename:"london.jpg", content_type: "image/jpg")

paris = Destination.create(
  city: "Paris"
)

file_30 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178063/development/paris.jpg")
paris.photo.attach(io: file_30, filename:"london.jpg", content_type: "image/jpg")

rio = Destination.create(
  city: "Rio"
)

file_31 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184294/development/rio.webp")
rio.photo.attach(io: file_31, filename:"london.jpg", content_type: "image/jpg")

nyc = Destination.create(
  city: "New York City"
)

file_32 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184295/development/new_york_city.jpg")
nyc.photo.attach(io: file_32, filename:"london.jpg", content_type: "image/jpg")

barcelona = Destination.create(
  city: "Barcelona"
)

file_33 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184301/development/rome.webp")
barcelona.photo.attach(io: file_33, filename: "london.jpg", content_type: "image/jpg")

tokyo = Destination.create(
  city: "Tokyo"
)

file_34 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689178069/development/tokyo.webp")
tokyo.photo.attach(io: file_34, filename:"london.jpg", content_type: "image/jpg")

toronto = Destination.create(
  city: "Toronto"
)

file_35 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184300/development/toronto.jpg")
toronto.photo.attach(io: file_35, filename:"london.jpg", content_type: "image/jpg")

rome = Destination.create(
  city: "Rome"
)

file_36 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184301/development/rome.webp")
rome.photo.attach(io: file_36, filename:"london.jpg", content_type: "image/jpg")

amsterdam = Destination.create(
  city: "Amsterdam"
)

file_37 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184302/development/amsterdam.avif")
amsterdam.photo.attach(io: file_37, filename:"london.jpg", content_type: "image/jpg")

berlin = Destination.create(
  city: "Berlin"
)

file_38 = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689184303/development/berlin.jpg")
berlin.photo.attach(io: file_38, filename:"london.jpg", content_type: "image/jpg")
