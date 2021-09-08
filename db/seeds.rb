# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require  'faker'

ReviewUser.destroy_all
Event.destroy_all
User.destroy_all


antonio = User.create(name: 'António Guerra', email: 'antonioguerrained@gmail.com', password: '123123', location: 'Via Futebol Clube do Porto', date_of_birth: Faker::Date.birthday(min_age: 24, max_age: 25), gender: 'male', phone_number: '+101927624961', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))

david = User.create(name: 'David Luis', email: 'davidluis2020@gmail.com', password: '123123', location: 'Rua Manuel Arriaga', date_of_birth: Faker::Date.birthday(min_age: 26, max_age: 27), gender: 'male', phone_number: '+101912345678', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))
mariana = User.create(name: 'Mariana Kobayashi', email: 'marianadanifk@gmail.com', password: '123123', location: 'Av. do Uruguai 36', date_of_birth: Faker::Date.birthday(min_age: 23, max_age: 25), gender: 'female', phone_number: '+101937826634', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))

puts "Hello António, David and Mariana!"


locations = ["Rua Condo Redondo Nº117","Rua Manuel Arriaga Nº8","R. Prof. Hernâni Cidade","Av. da Liberdade","Rua Dom João V","Via Futebol Clube do Porto","R. Dom Tomás de Almeida 61","Via Circular do Montijo","R. Pedro Álvares Cabral 42", "Av. do Uruguai 36"]
counter = 0

10.times do
    users = User.create(
        name: Faker::Name.name,
        location: locations[counter],
        description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
        email: Faker::Internet.email,
        password: Faker::Number.number(digits: 10),
        gender: %w[male female].sample,
        phone_number: Faker::PhoneNumber.phone_number_with_country_code,
        date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 50)
    )
    counter += 1
    reviewer = User.all - [users]
    5.times do
        review = ReviewUser.create(
            rating: %w[1 2 3 4 5].sample,
            content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
            reviewee_id: users,
            reviewer_id: reviewer.sample
        )
    end
end

puts "Hello Users"
users = User.all

event1 = Event.create!(user: users.sample, name:'Party in Urban', location:'Cais da Viscondessa, 1200-109 Lisboa', category:'Night out', date: Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Party all night long', price: 20 , max_people: 3)
event2 = Event.create!(user: users.sample, name:'Dinner at McDonalds', location:'Av. Padre Cruz, 1600-001 Lisboa', category:'Gastronomy', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Let\s eat like an American', price: 10, max_people: 4)
event3 = Event.create!(user: users.sample, name:'Diving in Sintra', location:'Avenida Alfredo Coelho, Colares, Sintra', category:'Sports', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Our planet it\s 71% water.', price: 50, max_people: 2)
event4 = Event.create!(user: users.sample, name:'Trip to Porto', location:'Av. dos Aliados 54 2º, 4000-064 Porto', category:'Travel', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Join me and I will show you Porto and how to speak. first lesson P*** que pariu, cara***', price: 70, max_people: 2)
event5 = Event.create!(user: users.sample, name:'Pole dance 1ª time', location:'R. Moreira 251, 4000-347 Porto', category:'Experiences', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Just a fancy sexy dance', price: 15, max_people:3)
event6 = Event.create!(user: users.sample, name:'Rock in Rio', location:'Av. Dr. Arlindo Vicente 406, Lisboa', category:'Events', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'rock \'n\' roll o\'clock ', price: 80, max_people: 10)
event7 = Event.create!(user: users.sample, name:'Visit MAAT', location:'Av. Brasília, 1300-598 Lisboa', category:'Culture', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Museum with river view', price: 5, max_people:4)
event8 = Event.create!(user: users.sample, name:'New in Lisbon', location:'Praça do Comércio, 1100-148 Lisboa', category:'Meet', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'just show me the city pleaseeee', price:2, max_people:5)
event9 = Event.create!(user: users.sample, name:'Climbing', location:'Edifício Lobo Rua Angola 1 Frente, 2620-036 Olival Basto', category:'Sports', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'As someone said  is natural to human beings. We walk, run and climb', price: 10, max_people:2)
event10 = Event.create!(user: users.sample, name:'Run to Cascais', location:'Passeio de Dom Luís I, 2750-642 Cascais', category:'Sports', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Run Forest RUNNNNNNN', price: 0, max_people:4)
event11 = Event.create!(user: users.sample, name:'Fancy Dinner', location:'Av. Marginal, 2780-267 Praia da Torre', category:'Gastronomy', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'A dinner like monaco but in Oeiras', price:40, max_people:3)
event12 = Event.create!(user: users.sample, name:'Felling Lonely :(', location:'R. da Rosa 265, 1200-385 Lisboa', category:'Meet', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'just a boy looking for some fun ', price:15, max_people:2)
event13 = Event.create!(user: users.sample, name:'Alive festival', location:'Passeio Marítimo de Algés, Algés', category:'Events', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'A MEGA FESTIVAL', price:100, max_people:5)
event14 = Event.create!(user: users.sample, name:'Visit museum', location:'Alameda dos Oceanos, 1990-155 Lisboa', category:'Culture', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Culture time', price:3, max_people:3)
event15 = Event.create!(user: users.sample, name:'Let/s go to Bairro', location:'Praça Luís de Camões, 1200-283 Lisboa', category:'Night out', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Party all night long (COVID test should be negative) and alcohol VERY positive', price:10, max_people:5)
event16 = Event.create!(user: users.sample, name:'Paris trip', location:'Paris', category:'Travel', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Mona lisa, baguetes and molin rouge', price:90, max_people:4)
event17 = Event.create!(user: users.sample, name:'Algarve holidays', location:'Av. Francisco Sá Carneiro, 8125-507 Quarteira', category:'Travel', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'Sun, Avencs and Camones', price:70, max_people:8)
event18 = Event.create!(user: users.sample, name:'Sky dive', location:'Aeródromo de Évora Estr. de Viana, 7005-210 Évora', category:'Experiences', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'May the gravity be with you', price:100, max_people: 1)
event19 = Event.create!(user: users.sample, name:'Relax Drink', location:'Av. Ribeira das Naus, Lisboa', category:'Night out', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'A good drink, a good conversation and a good sunset', price:10, max_people:5)
event20 = Event.create!(user: users.sample, name:'Girls just wanna have fun ;)', location:'R. da Cintura do Porto de Lisboa, 1200-109 Lisboa', category:'Night out', date:Faker::Date.between(from: '2021-09-12', to: '2021-12-25'), description:'the name says it all', price:20, max_people:5)

# 20.times do
#     event = Event.create(
#         name: ,
#         location: Faker::Address.city,
#         category:['Night out', 'Gastronomy', 'Sports', 'Travel', 'Experiences', 'Events', 'Culture', 'Meet'].sample,
#         date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'),
#         description:Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 2),
#         price: [10, 20, 5, 2].sample,
#         max_people: [1,2,4,6,10].sample,
#         user_id: User.all.sample
#     )
# end

puts "UHUH new Events"