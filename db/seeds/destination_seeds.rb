require 'open-uri'

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
