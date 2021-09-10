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

antonio = User.create(name: 'António Guerra', email: 'antonioguerrained@gmail.com', password: '123123', location: 'Via Futebol Clube do Porto', date_of_birth: Faker::Date.birthday(min_age: 24, max_age: 25), gender: 'male', phone_number: '+351927624961', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))
david = User.create(name: 'David Luis', email: 'davidluis2020@gmail.com', password: '123123', location: 'Rua Manuel Arriaga', date_of_birth: Faker::Date.birthday(min_age: 26, max_age: 27), gender: 'male', phone_number: '+351912345678', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))
mariana = User.create(name: 'Mariana Kobayashi', email: 'marianadanifk@gmail.com', password: '123123', location: 'Av. do Uruguai 36', date_of_birth: Faker::Date.birthday(min_age: 23, max_age: 25), gender: 'female', phone_number: '+351937826634', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))

puts "----------------------------------------------"
puts "----- Hello António, David and Mariana! ------"
puts "----------------------------------------------"

locations = ["Rua Condo Redondo Nº117","Rua Manuel Arriaga Nº8","R. Prof. Hernâni Cidade","Av. da Liberdade","Rua Dom João V","Via Futebol Clube do Porto","R. Dom Tomás de Almeida 61","Via Circular do Montijo","R. Pedro Álvares Cabral 42", "Av. do Uruguai 36"]
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
end

  puts "----------------------------------------------"
  puts "------------ Welcome gentlemans! -------------"
  puts "----------------------------------------------"

  puts "------------------ Hold on! ------------------"

  puts "----------------------------------------------"
  puts "---------- Creating some randoms! ------------"
  puts "----------------------------------------------"

35.times do
  user = User.create(
    name: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
    location: locations[counter],
    description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
    email: Faker::Internet.email,
    password: '123123',
    gender: %w[Male Female].sample,
    phone_number: "+351 9#{rand(1..3)}#{rand(0..9)} #{Faker::Number.number(digits: 3)} #{Faker::Number.number(digits: 3)}",
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
  )

  counter += 1
  reviewer = User.all - [user]
  5.times do
    review = ReviewUser.create(
      rating: %w[1 2 3 4 5].sample,
      content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
      reviewee_id: user,
      reviewer_id: reviewer.sample
    )
  end
end

puts "----------------------------------------------"
puts "---------- Creating some Events! ------------"
puts "----------------------------------------------"

users = User.all


event1 = Event.create!(user: users.sample, name:'Party in Urban', location:'Cais da Viscondessa, 1200-109 Lisboa', category:'Night out', description:'Party all night long', price: 20.00 , max_people: 3)
event1.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event2 = Event.create!(user: users.sample, name:'Dinner at McDonalds', location:'Av. Padre Cruz, 1600-001 Lisboa', category:'Gastronomy', description:'Let\s eat like an American', price: 10.00, max_people: 4)
event2.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event3 = Event.create!(user: users.sample, name:'Diving in Sintra', location:'Avenida Alfredo Coelho, Colares, Sintra', category:'Sports', description:'Our planet it\s 71% water.', price: 50.00, max_people: 2)
event3.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event4 = Event.create!(user: users.sample, name:'Trip to Porto', location:'Av. dos Aliados, 4000-064 Porto', category:'Travel', description:'Join me and I will show you Porto and how to speak. first lesson P*** que pariu, cara***', price: 70, max_people: 2)
event4.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event5 = Event.create!(user: users.sample, name:'Pole dance 1ª time', location:'Rua do Moreira, 4000-347 Porto', category:'Experiences', description:'Just a fancy sexy dance', price: 15.00, max_people:3)
event5.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event6 = Event.create!(user: users.sample, name:'Rock in Rio', location:'Av. Dr. Arlindo Vicente, Lisboa', category:'Events', description:'rock \'n\' roll o\'clock ', price: 80.00, max_people: 10)
event6.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event7 = Event.create!(user: users.sample, name:'Visit MAAT', location:'Av. Brasília, 1300-598 Lisboa', category:'Culture', description:'Museum with river view', price: 5.00, max_people:4)
event7.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event8 = Event.create!(user: users.sample, name:'New in Lisbon', location:'Praça do Comércio, 1100-148 Lisboa', category:'Meet', description:'just show me the city pleaseeee', price:2.00, max_people:5)
event8.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event9 = Event.create!(user: users.sample, name:'Climbing', location:'Rua de Angola, 2620-036 Olival Basto', category:'Sports', description:'As someone said  is natural to human beings. We walk, run and climb', price: 10.00, max_people:2)
event9.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event10 = Event.create!(user: users.sample, name:'Run to Cascais', location:'Alameda dos Combatentes da Grande Guerra, 2750-642 Cascais', category:'Sports', description:'Run Forest RUNNNNNNN', price: 0, max_people:4)
event10.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event11 = Event.create!(user: users.sample, name:'Fancy Dinner', location:'Av. Marginal 0, 2775-604 Carcavelos', category:'Gastronomy', description:'A dinner like monaco but in Oeiras', price:40.00, max_people:3)
event11.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event12 = Event.create!(user: users.sample, name:'Felling Lonely :(', location:'R. da Rosa, 1200-385 Lisboa', category:'Meet', description:'just a boy looking for some fun ', price:15.00, max_people:2)
event12.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event13 = Event.create!(user: users.sample, name:'Alive festival', location:'Passeio Marítimo de Algés, Algés', category:'Events', description:'A MEGA FESTIVAL', price:100.00, max_people:5)
event13.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event14 = Event.create!(user: users.sample, name:'Visit museum', location:'Alameda dos Oceanos, 1990-155 Lisboa', category:'Culture', description:'Culture time', price:3.00, max_people:3)
event14.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event15 = Event.create!(user: users.sample, name:'Let/s go to Bairro', location:'Praça Luís de Camões, 1200-283 Lisboa', category:'Night out', description:'Party all night long (COVID test should be negative) and alcohol VERY positive', price:10.00, max_people:5)
event15.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event16 = Event.create!(user: users.sample, name:'Paris trip', location:'Paris', category:'Travel', description:'Mona lisa, baguetes and molin rouge', price:90.00, max_people:4)
event16.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event17 = Event.create!(user: users.sample, name:'Algarve holidays', location:'Av. Francisco Sá Carneiro, 8125-141 Quarteira', category:'Travel', description:'Sun, Avencs and Camones', price:70.00, max_people:8)
event17.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event18 = Event.create!(user: users.sample, name:'Sky dive', location:'N254, 7005-797 Évora', category:'Experiences', description:'May the gravity be with you', price:100.00, max_people: 1)
event18.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event19 = Event.create!(user: users.sample, name:'Relax Drink', location:'Av. Ribeira das Naus, Lisboa', category:'Night out', description:'A good drink, a good conversation and a good sunset', price:10.00, max_people:5)
event19.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

event20 = Event.create!(user: users.sample, name:'Girls just wanna have fun ;)', location:'R. da Cintura do Porto de Lisboa, 1200-109 Lisboa', category:'Night out', description:'the name says it all', price:20.00, max_people:5)
event20.event_days.create!(date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'))

puts "----------------------------------------------"
puts "---------- UHUH new Events -------------------"
puts "----------------------------------------------"
