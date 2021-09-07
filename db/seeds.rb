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

20.times do
    event = Event.create(
        name: Faker::Coffee.notes,
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