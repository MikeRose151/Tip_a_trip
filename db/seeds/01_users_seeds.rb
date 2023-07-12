require 'open-uri'

puts "Creating 10 fake Users including test, Lazy Susan, and Tripper Trevor..."

testtickle = User.create!(
  email: "test@tat.com",
  password: 123456,
  username: "Test Tickle"
)

testtickle_avatar = URI.open("https://hellogiggles.com/wp-content/uploads/sites/7/2016/11/22/IMG_2531.jpg?quality=82&strip=all")
testtickle.photo.attach(io: testtickle_avatar, filename: "testtickle.jpg", content_type: "image/jpg")

ls = User.create!(
  email: "larry@tat.com",
  password: 123456,
  username: "Lazy Larry"
)

ls_avatar = URI.open("https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
ls.photo.attach(io: ls_avatar, filename: "ls.jpg", content_type: "image/jpg")

tt = User.create!(
  email: "trina@tat.com",
  password: 123456,
  username: "Tripper Trina"
)

tt_avatar = URI.open("https://www.cedars-sinai.org/content/dam/cedars-sinai/blog/2019/06/SelfieSafety.jpg")
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
