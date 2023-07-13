require 'open-uri'

puts "Creating 10 fake Users including test, Lazy Susan, and Tripper Trevor..."

testtickle = User.create!(
  email: "test@tat.com",
  password: 123456,
  username: "Test Tickle"
)

testtickle_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689185318/development/user_test.jpg")
testtickle.photo.attach(io: testtickle_avatar, filename: "testtickle.jpg", content_type: "image/jpg")

ll = User.create!(
  email: "larry@tat.com",
  password: 123456,
  username: "Lazy Larry"
)

ll_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689185319/development/user_larry.jpg")
ll.photo.attach(io: ll_avatar, filename: "ls.jpg", content_type: "image/jpg")

tt = User.create!(
  email: "trina@tat.com",
  password: 123456,
  username: "Tripper Trina"
)

tt_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689185322/development/user_trina.jpg")
tt.photo.attach(io: tt_avatar, filename: "tt.jpg", content_type: "image/jpg")

mm = User.create!(
  email: "michael@tat.com",
  password: 123456,
  username: "Magic Mike"
)

mm_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689185323/development/user_mike.jpg")
mm.photo.attach(io: mm_avatar, filename: "mm.jpg", content_type: "image/jpg")

tommy = User.create!(
  email: "tommy@tat.com",
  password: 123456,
  username: "Tipper Tommy"
)

tommy_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689035777/development/user_tommy.jpg")
tommy.photo.attach(io: tommy_avatar, filename: "mm.jpg", content_type: "image/jpg")

gg = User.create!(
  email: "georgia@tat.com",
  password: 123456,
  username: "Georgia Grace"
)

gg_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689185326/development/user_georgia.jpg")
gg.photo.attach(io: gg_avatar, filename: "gg.jpg", content_type: "image/jpg")


fara = User.create!(
  email: "Fara@tat.com",
  password: 123456,
  username: "Fara B"
)

fara_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689035781/development/user_fara.jpg")
fara.photo.attach(io: fara_avatar, filename: "fara.jpg", content_type: "image/jpg")

nt = User.create!(
  email: "Nnamdi@tat.com",
  password: 123456,
  username: "Nnamdi Travels"
)

nt_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689035783/development/user_nnamdi.jpg")
nt.photo.attach(io: nt_avatar, filename: "nt.jpg", content_type: "image/jpg")

dt = User.create!(
  email: "Dee@tat.com",
  password: 123456,
  username: "Dee Tips"
)

dt_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689185330/development/user_dee.jpg")
dt.photo.attach(io: dt_avatar, filename: "dt.jpg", content_type: "image/jpg")

pt = User.create!(
  email: "Pedro@tat.com",
  password: 123456,
  username: "Pedro Tasca"
)

pt_avatar = URI.open("https://res.cloudinary.com/tip-a-trip/image/upload/v1689035787/development/user_pedro.jpg")
pt.photo.attach(io: pt_avatar, filename: "pt.jpg", content_type: "image/jpg")
