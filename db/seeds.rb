Message.destroy_all
Chatroom.destroy_all
puts "Destroying all the Reviews \ ..."
ReviewUser.destroy_all
puts "Destroying all the Events \ ..."
Booking.destroy_all
EventDay.destroy_all
Event.destroy_all
puts "Destroying all the Users \ ..."
User.destroy_all

puts "----------------------------------------------"
puts "-------------- Almost there... ---------------"
puts "----------------------------------------------"
puts "----------- Everything destroyed! ------------"

puts "----------------------------------------------"
puts "------ Creating the three musketeers.. -------"
puts "----------------------------------------------"

antonio = User.create(name: 'António Guerra', email: 'antonioguerrained@gmail.com', password: '123123', location: 'Via Futebol Clube do Porto', date_of_birth: Faker::Date.birthday(min_age: 24, max_age: 25), gender: 'male', phone_number: '+351927624961', description: "I'm from Porto, the first word I said was P*** que P**** caral**. I came to Lisbon to take a course and meet some girls")
antonio.avatar.attach(
  io: File.open(Rails.root.join("app/assets/images/avatars/main_users/antonio.jpg")),
  filename: 'antonio'
)
david = User.create(name: 'David Luis', email: 'davidluis2020@gmail.com', password: '123123', location: 'Rua Manuel Arriaga', date_of_birth: Faker::Date.birthday(min_age: 26, max_age: 27), gender: 'male', phone_number: '+351912345678', description: "My name is David Luís, but don't confuse me with the football player I have a lot less hair.In your free time, enjoy doing outdoor activities.")
david.avatar.attach(
  io: File.open(Rails.root.join("app/assets/images/avatars/main_users/david.jpg")),
  filename: 'david'
)
mariana = User.create(name: 'Mariana Kobayashi', email: 'marianadanifk@gmail.com', password: '123123', location: 'Av. do Uruguai 36', date_of_birth: Faker::Date.birthday(min_age: 23, max_age: 25), gender: 'female', phone_number: '+351937826634', description: "Kobayashi a name that stays in the mind. Join me for a drink and I'll see if your LinkedIn is good")
mariana.avatar.attach(
  io: File.open(Rails.root.join("app/assets/images/avatars/main_users/mariana.jpg")),
  filename: 'mariana'
)

fernando = User.create(name: 'Fernando Jardim', email: 'fernandojardim@gmail.com', password: '123123', location: 'Av. do Uruguai 36', date_of_birth: Faker::Date.birthday(min_age: 23, max_age: 25), gender: 'male', phone_number: '+351937823334', description: "Brazilian living in Portugal. Currently studying but above all enjoying life. And of course I make the best caipirinhas")
fernando.avatar.attach(
  io: File.open(Rails.root.join("app/assets/images/avatars/main_users/fernando.jpg")),
  filename: 'fernando'
)

margarida = User.create(name: 'Margarida Toureiro', email: 'margaridatoureiro@gmail.com', password: '123123', location: 'Av. do Uruguai 36', date_of_birth: Faker::Date.birthday(min_age: 23, max_age: 25), gender: 'female', phone_number: '+351447823334', description: "Hi my name is Margarida and I was born on the wrong side of the Tejo river 😥. My hobbies are going to the gym and my dream is to participate in Ninja Warrior 🐱‍👤")
margarida.avatar.attach(
  io: File.open(Rails.root.join("app/assets/images/avatars/main_users/margarida.jpg")),
  filename: 'margarida'
)


puts "----------------------------------------------"
puts "----- Hello António, David and Mariana! ------"
puts "----------------------------------------------"

locations = [
  "Rua Condo Redondo Nº117",
  "Rua Manuel Arriaga Nº8",
  "R. Prof. Hernâni Cidade",
  "Av. da Liberdade",
  "Rua Dom João V",
  "Via Futebol Clube do Porto",
  "R. Dom Tomás de Almeida 61",
  "Via Circular do Montijo",
  "R. Pedro Álvares Cabral 42",
  "Av. do Uruguai 36"
]
counter = 0

portuguese_female_first_names = %w[Maria Clara Beatriz Matilde Catarina Ana Bruna Vitoria Renata Carlota] # 10
portuguese_female_last_names = %w[Santos Fernandes Sousa Rocha Alves Esteves Albuquerque Silva Louro Amorim] # 10

portuguese_male_first_names = %w[Diogo Simão João Tiago Bruno Pedro Vasco Tomás Afonso Martim] # 10
portuguese_male_last_names = %w[Santos Fernandes Sousa Rocha Alves Esteves Albuquerque Silva Louro Amorim] # 10

puts "----------------------------------------------"
puts "----- Creating some portuguese females! ------"
puts "----------------------------------------------"

15.times do
  user_female = User.create(
    name: "#{portuguese_female_first_names.sample} #{portuguese_female_last_names.sample}",
    location: locations[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    email: Faker::Internet.email,
    password: '123123',
    gender: 'Female',
    phone_number: "+351 9#{rand(1..3)}#{rand(0..9)} #{Faker::Number.number(digits: 3)} #{Faker::Number.number(digits: 3)}",
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
  )
  user_female.avatar.attach(
    io: File.open(Rails.root.join("app/assets/images/avatars/female/female_ava#{rand(1..15)}.jpg")),
    filename: 'females'
  )
end

  puts "----------------------------------------------"
  puts "-------------- Welcome ladies! ---------------"
  puts "----------------------------------------------"

  puts "------------------ Hold on! ------------------"

  puts "----------------------------------------------"
  puts "------ Creating some portuguese males! -------"
  puts "----------------------------------------------"

15.times do
  user_male = User.create(
    name: "#{portuguese_male_first_names.sample} #{portuguese_male_last_names.sample}",
    location: locations[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    email: Faker::Internet.email,
    password: '123123',
    gender: 'Male',
    phone_number: "+351 9#{rand(1..3)}#{rand(0..9)} #{Faker::Number.number(digits: 3)} #{Faker::Number.number(digits: 3)}",
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
  )
  user_male.avatar.attach(
    io: File.open(Rails.root.join("app/assets/images/avatars/male/male_ava#{rand(1..15)}.jpg")),
    filename: 'males'
  )
end

  puts "----------------------------------------------"
  puts "------------ Welcome gentlemans! -------------"
  puts "----------------------------------------------"

  # puts "------------------ Hold on! ------------------"

  # puts "----------------------------------------------"
  # puts "---------- Creating some randoms! ------------"
  # puts "----------------------------------------------"

# 35.times do
#   user = User.create(
#     name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
#     location: locations[counter],
#     description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#     email: Faker::Internet.email,
#     password: '123123',
#     gender: %w[Male Female].sample,
#     phone_number: "+351 9#{rand(1..3)}#{rand(0..9)} #{Faker::Number.number(digits: 3)} #{Faker::Number.number(digits: 3)}",
#     date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
#   )

#   counter += 1
#   reviewer = User.all - [user]
#   5.times do
#     review = ReviewUser.create(
#       rating: %w[1 2 3 4 5].sample,
#       content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
#       reviewee_id: user,
#       reviewer_id: reviewer.sample
#     )
#   end
# end

puts "----------------------------------------------"
puts "---------- Creating some Events! ------------"
puts "----------------------------------------------"

users = User.all


event1 = Event.create!(user: users.sample, name:'Party in Urban', location:'Cais da Viscondessa, 1200-109 Lisboa', category:'Night out', description:'Party all night long', price: 20, max_people: 3)
event1.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event1.photo.attach(
  io: URI.open("https://res.cloudinary.com/dv6tpcucf/image/upload/v1631717610/development/ceo3u4skhlek70clgocfrc4e3sa0.jpg"),
  filename: 'urban.jpg'
)
event1.save!

event2 = Event.create!(user: users.sample, name:'Dinner at McDonalds', location:'Av. Padre Cruz, 1600-001 Lisboa', category:'Gastronomy', description:"Let's eat like an American", price: 10, max_people: 4)
event2.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event2.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/mcdonalds.png")),
  filename: 'mcdonalds'
)

event3 = Event.create!(user: users.sample, name:'Diving in Sintra', location:'Avenida Alfredo Coelho, Colares, Sintra', category:'Sports', description:"Our planet it's 71% water.", price: 50, max_people: 2)
event3.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event3.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/diving.jpg")),
  filename: 'diving'
)

event4 = Event.create!(user: users.sample, name:'Trip to Porto', location:'Av. dos Aliados, 4000-064 Porto', category:'Travel', description:"Join me to the most amazing trip of your life! Let's enjoy porto together!", price: 70, max_people: 2)
event4.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event4.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/porto.jpg")),
  filename: 'porto'
)

event5 = Event.create!(user: users.sample, name:'Pole dance for the first time', location:'Rua do Moreira, 4000-347 Porto', category:'Experiences', description:'Just a fancy sexy dance', price: 15, max_people:3)
event5.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event5.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/poledance.jpg")),
  filename: 'pole dance'
)

event6 = Event.create!(user: users.sample, name:'Rock in Rio', location:'Av. Dr. Arlindo Vicente, Lisboa', category:'Events', description:"Rock 'n Roll O'CLOCK!", price: 80, max_people: 10)
event6.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event6.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/rockinrio.jpg")),
  filename: 'rock in rio'
)

event7 = Event.create!(user: users.sample, name:'Art Gallery in Lisbon', location:'Av. Brasília, 1300-598 Lisboa', category:'Culture', description:'How about we discuss Da Vinci style?', price: 5, max_people:4)
event7.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event7.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/arte.jpg")),
  filename: 'arte'
)

event8 = Event.create!(user: users.sample, name:'Web Summit 2021', location:'Praça do Comércio, 1100-148 Lisboa', category:'Meet', description:"Let's go to the most outstanding technology event of the world!", price:2, max_people:5)
event8.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event8.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/websummit.jpg")),
  filename: 'web summit'
)

event9 = Event.create!(user: users.sample, name:'Climbing', location:'Rua de Angola, 2620-036 Olival Basto', category:'Sports', description:'As someone said  is natural to human beings. We walk, run and climb', price: 10, max_people:2)
event9.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event9.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/climbing.jpg")),
  filename: 'climbing'
)

event10 = Event.create!(user: users.sample, name:'Crossfit Training', location:'Alameda dos Combatentes da Grande Guerra, 2750-642 Cascais', category:'Sports', description:"Test yourself to the limit!", price: 15, max_people:4)
event10.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event10.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/crossfit.jpg")),
  filename: 'crossfit'
)

event11 = Event.create!(user: users.sample, name:'Fancy Dinner', location:'Av. Marginal 0, 2775-604 Carcavelos', category:'Gastronomy', description:'A dinner like monaco but in Oeiras', price:40, max_people:3)
event11.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event11.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/gastronomy1.jpg")),
  filename: 'steak'
)

event12 = Event.create!(user: users.sample, name:'Felling Lonely :(', location:'R. da Rosa, 1200-385 Lisboa', category:'Meet', description:'Just a boy looking for some fun ', price:15, max_people:2)
event12.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event12.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/lonely.jpg")),
  filename: 'lonely'
)


event13 = Event.create!(user: users.sample, name:'Fado in Lisbon', location:'Passeio Marítimo de Algés, Algés', category:'Events', description:"Enjoy some amazing, lovely and classic portuguese Fado.", price:100, max_people:5)
event13.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event13.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/fado.jpg")),
  filename: 'fado'
)

event14 = Event.create!(user: users.sample, name:'Visit museum', location:'Alameda dos Oceanos, 1990-155 Lisboa', category:'Culture', description:'Culture time', price:3, max_people:3)
event14.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event14.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/arte.jpg")),
  filename: 'arte'
)

event15 = Event.create!(user: users.sample, name:"Let's go to Bairro", location:'Praça Luís de Camões, 1200-283 Lisboa', category:'Night out', description:'Party all night long. Must test negative to Covid-19 and positive to getting drunk!', price:10, max_people:5)
event15.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event15.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/nightclub.jpg")),
  filename: 'nightclub'
)

event16 = Event.create!(user: users.sample, name:'Paris trip', location:'Lisbon', category:'Travel', description:'Mona lisa, baguetes and molin rouge', price:90, max_people:4)
event16.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event16.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/paris.jpg")),
  filename: 'paris'
)

event17 = Event.create!(user: users.sample, name:'Venice holidays', location:'Av. Francisco Sá Carneiro, 8125-141 Quarteira', category:'Travel', description:'Pizza, pasta, Super Mario & Luigi!', price:70, max_people:8)
event17.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event17.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/venice.jpg")),
  filename: 'venice'
)

event18 = Event.create!(user: users.sample, name:'Sky dive', location:'N254, 7005-797 Évora', category:'Experiences', description:'May the gravity be with you', price:100, max_people: 1)
event18.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event18.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/parachute.png")),
  filename: 'parachute'
)

event19 = Event.create!(user: users.sample, name:'The G.O.A.T Ronaldo!', location:'Av. Ribeira das Naus, Lisboa', category:'Events', description:'A weekend in Manchester to watch the great of all time, Cristiano Ronaldo!', price:10, max_people:5)
event19.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event19.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/soccergame.jpg")),
  filename: 'soccergame'
)

event20 = Event.create!(user: users.sample, name:'Girls just wanna have fun ;)', location:'R. da Cintura do Porto de Lisboa, 1200-109 Lisboa', category:'Night out', description:'The name says it all. Join us if you have interest!', price:20, max_people:5)
event20.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))
event20.photo.attach(
  io: File.open(Rails.root.join("app/assets/images/category_img/partygirls.jpg")),
  filename: 'partygirls'
)

puts "*************,,*/(((((//,,*(#%%%%%%%%%%%%%%%#(*,,,****************************************************,*/(((((((((/((((////****/((##%%%%%%
,*************,,//((((((//,,*(%%%%%%%%%%%%%%%%%##/*****************************************************,,*/(///(//////****//((##%%%%%%%%%%%
,************,,*/(((((((//***/#%%%%%%%%%%%%%%%%%%%#(/***************************************************,*//////////*//((#%%%%%%%%%%%%%%%%%
,***********,,*////////////***/##%%%%%%%%%%%%%%%%%%%##(*,***********************************************,,*////////(###%%%%%%%%%%%%%%%%%%%%
,**********,,,*/*******//////**/(#%%%%%%%%%%%%%%%%%%%%%#(/**********************************************,,,***/(##%%%%%%%%%%%%%%%%%%%%%%%%%
,*********,,,,*************///***/(#%%%%%%%%%%%%%%%%%%%%%%#(/***********************************,****,****/((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
,*********,,,***************//****/(##%%%%%%%%%%%%%%%%%%%%%%##//**************//////////////////////((#####%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(
,********,,,,***********************/(#%%%%%%%%%%%%%%%%%%%%%%%##################%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(/
,*******,..,***********************,,*/##%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%###((//
,*******,.,,***********************,,,,*(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(//**//
,******,.,,,************************,,,,*/(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(//*******
,*****,,,,,********,***,,,,,,,,,,,,*,,,,,,*/(######%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(/**********
,*****,..,*******,,,,,,,,,,,,,,,,,,,,,,*,,,,*///((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%###(/************
,*****,,,*******,,,,,*,,,,,,,,,,,,,,,,,****,,,*/(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#######(//**************
,****,.,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,**,,,/(%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#((//******************
,***,..,,,,,,,,,,,,,,,,,,,,,,,,,,,,,..,,,,,,,*(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(/*******************
,**,,.,,,,,,,,,,,,,,,,,,,,,,,,,,.......,,,,,,/#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#####%%%%%%%%%%%%%%%%#(/******************
,**,..,,,,,,,,,,,,,,,,,,,,,,,,,......,,,*,,,*(#%%%%%%%%##(((/(##%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(((/*/((#%%%%%%%%%%%%%%#(/*****************
,*,..,,,,,,,,,,,,,,,,,,,,,,,,,,,.....,,**,,*/#%%%%%%%##((((*,**/#%%%%%%%%%%%%%%%%%%%%%%%%%%%%##((##/,,,*(#%%%%%%%%%%%%%%#(*****************
.*,.,,,**,,,,,,,,,,,,,,,,,,,,,,,,,,*****,,,/(%%%%%%%%#(//(#/,..*/#%%%%%%%%%%%%%%%%%%%%%%%%%%%#(//(#/,..,/(#%%%%%%%%%%%%%%#/*****///////////
.,..,,,,,,,,,,,,,,,,,,,,,,,,,,*,,*******,,,(#%%%%%%%%#(*,,,....,/#%%%%%%%%%%%%%%%%%%%%%%%%%%%#(*,,,....,/(#%%%%%%%%%%%%%%#(*,**////////////
.,..,,,,,,,,,...........,,,,,,*,********,,*(#%%%%%%%%%#(/*,,...,/#%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(/*,,..,*/##%%%%%%%%%%%%%%%#(***////////////
...,,,,,,,................,,*,**********,,/#%%%%%%%%%%%%#((////((#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##((///(#%%%%%%%%%%%%%%%%%%(/**////////////
 ..,,,,,,.................,,,**********,,*(#%%%%%%%%%%%%%%%%%%#%%%%%%%%#((///((#%%%%%%%%%%%%%%%%%%%%%#%%%%%%%%%%%%%%%%%%%%%#/**////////////
.,,,,,,,,.................,,***********,,/(####%%%%%%%%%%%%%%%%%%%%%%%%#(/*,,,*(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(/*////////////
.,***,,,,,,..............,,,**********,..,***//((##%%%%%%%%%%%%%%%%%%%%%%%##((##%%%%%%%%%%%%%%%%%%%%%%%%%##(((((((((###%%%%%#/**///////////
.*****,,,,,,,,,,,,,,,,,,,*************,..,*******/(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##///*//////((#%%%%%#(**///////////
.****************/******/***////*****,.,*///////**/#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(////////////(#%%%%%#/**//////////
.***********************/////*******,..,*//////////(#%%%%%%%%%%%%%%%%%%%%##########%%%%%%%%%%%%%%%%%%%%#(///////////*/(#%%%%%#(***/////////
.************************///********,..,*//////////#%%%%%%%%%%%%%%%%%%#(//*****///(((##%%%%%%%%%%%%%%%%#(///////////**/##%%%%##/***////////
.***********************************,.,,***///////(#%%%%%%%%%%%%%%%%#(/*,,,*//((((////(#%%%%%%%%%%%%%%%#((////////////(#%%%%%%#(*********//
,***********,,,*,,*,,**************,,,*//******//(#%%%%%%%%%%%%%%%%%#(*,,*/(((#####(((((#%%%%%%%%%%%%%%%##///////////(#%%%%%%%%#(***///////
,*************,,**,,,************,,,,,/(##((((####%%%%%%%%%%%%%%%%%%%(/**/(((#((((#((//(#%%%%%%%%%%%%%%%%%#(((((((((##%%%%%%%%%%#/**///////
,******************************,,,,,,,*(#%#%%%%%%%%%%%%%%%%%%%%%%%%%%#(**/((#(#(((#((//(#%%%%%%%%%%%%%%%%%%%%%%%#%#%%%%%%%%%%%%%#(**///////
,*************,**************,****,,,,,/(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(/*/((((#((((///(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(/*///////
,*************************************,*/#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(////////////(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#/**/////*
,******////****///////////////////////***/#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%####(((((((###%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(********
.,*,****///////////////////////////////***/#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#(/*******
.,,,,*****//////////////////////////*******(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%##(*******
.,,,,,,***********/////////////////********/(#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%(*******"
