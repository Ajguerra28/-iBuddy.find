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


antonio = User.create(name: 'António Guerra', email: 'antonioguerrained@gmail.com', password: '123123', location: 'Via Futebol Clube do Porto', date_of_birth: Faker::Date.birthday(min_age: 24, max_age: 25), gender: 'male', phone_number: '+351927624961', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))

david = User.create(name: 'David Luis', email: 'davidluis2020@gmail.com', password: '123123', location: 'Rua Manuel Arriaga', date_of_birth: Faker::Date.birthday(min_age: 26, max_age: 27), gender: 'male', phone_number: '+351912345678', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))
mariana = User.create(name: 'Mariana Kobayashi', email: 'marianadanifk@gmail.com', password: '123123', location: 'Av. do Uruguai 36', date_of_birth: Faker::Date.birthday(min_age: 23, max_age: 25), gender: 'female', phone_number: '+351937826634', description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4))

puts "Hello António, David and Mariana!"


locations = ["Rua Condo Redondo Nº117","Rua Manuel Arriaga Nº8","R. Prof. Hernâni Cidade","Av. da Liberdade","Rua Dom João V","Via Futebol Clube do Porto","R. Dom Tomás de Almeida 61","Via Circular do Montijo","R. Pedro Álvares Cabral 42", "Av. do Uruguai 36"]
counter = 0

10.times do
    user = User.create(
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

puts "Hello Users"

"Pule dance 1ª time", "Rock in Rio", "Visit MAAT", "New in lisbon", "", "","", "", "", "", "","", "", "", "", ""]


event1 = Event.create(name:'Party in Urban', location:'', category:'Night out', date: Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 20 , max_people: 3)
event2 = Event.create(name:'Dinner at McDonalds', location:'', category:'Gastronomy', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 10, max_people: 4)
event3 = Event.create(name:'Diving in Sintra', location:'', category:'Sports', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 50, max_people: 2)
event4 = Event.create(name:'Trip to Porto', location:'', category:'Travel', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 70, max_people: 2)
event5 = Event.create(name:'Pole dance 1ª time', location:'', category:'Experiences', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 15, max_people:3)
event6 = Event.create(name:'Rock in Rio', location:'', category:'Events', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 80, max_people: 10)
event7 = Event.create(name:'Visit MAAT', location:'', category:'Culture', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 5, max_people:4)
event8 = Event.create(name:'New in Lisbon', location:'', category:'Meet', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:2, max_people:5)
event9 = Event.create(name:'Climbing', location:'', category:'Sports', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 10, max_people:2)
event10 = Event.create(name:'Run to Cascais', location:'', category:'Sports', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price: 0, max_people:4)
event11 = Event.create(name:'Fancy Dinner', location:'', category:'Gastronomy', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:40, max_people:3)
event12 = Event.create(name:'Felling Lonely :(', location:'', category:'Meet', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:15, max_people:2)
event13 = Event.create(name:'Alive festival', location:'', category:'Events', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:100, max_people:5)
event14 = Event.create(name:'Visit museum', location:'', category:'Culture', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:3, max_people:3)
event15 = Event.create(name:'Let/s go to Bairro', location:'', category:'Night out', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:10, max_people:5)
event16 = Event.create(name:'Paris trip', location:'', category:'Travel', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:90, max_people:4)
event17 = Event.create(name:'Algarve holidays', location:'', category:'Travel', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:70, max_people:8)
event18 = Event.create(name:'Sky dive', location:'', category:'Experiences', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:100, max_people: 1)
event19 = Event.create(name:'Relax Drink', location:'', category:'', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:10, max_people:5)
event20 = Event.create(name:'Girls just wanna have fun ;)', location:'', category:'Night out', date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'), description:'', price:20, max_people:5)

20.times do
    event = Event.create(
        name: ,
        location: Faker::Address.city,
        category:['Night out', 'Gastronomy', 'Sports', 'Travel', 'Experiences', 'Events', 'Culture', 'Meet'].sample,
        date:Faker::Date.between(from: '2021-09-01', to: '2021-12-25'),
        description:Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 2),
        price: [10, 20, 5, 2].sample,
        max_people: [1,2,4,6,10].sample,
        user: User.all.sample
    )
end

puts "UHUH new Events"