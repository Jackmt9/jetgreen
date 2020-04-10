# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

b = MealType.create!(meal: "Breakfast")
l = MealType.create!(meal: "Lunch")
d = MealType.create!(meal: "Dinner")
s = MealType.create!(meal: "Snack")


Food.create!(meal_type: b, dish: "Yogurt")
Food.create!(meal_type: b, dish: "Fruit Cup")
Food.create!(meal_type: b, dish: "Cereal")
Food.create!(meal_type: b, dish: "Vegetables")
Food.create!(meal_type: b, dish: "French Toast")
Food.create!(meal_type: b, dish: "Waffles")

Food.create!(meal_type: l, dish: "Pizza")
Food.create!(meal_type: l, dish: "Mac n Cheese")
Food.create!(meal_type: l, dish: "Eggs")
Food.create!(meal_type: l, dish: "Hero Sandwich")
Food.create!(meal_type: l, dish: "Alaskan Grilled Salmon")

Food.create!(meal_type: d, dish: "Brisket Chili")
Food.create!(meal_type: d, dish: "Salmon Nicoise Salad")
Food.create!(meal_type: d, dish: "Chicken with Rice")
Food.create!(meal_type: d, dish: "Fettucine Alfredo")
Food.create!(meal_type: d, dish: "Bacala Livornese")

Food.create!(meal_type: s, dish: "Cookies")
Food.create!(meal_type: s, dish: "Pretzels")
Food.create!(meal_type: s, dish: "Baby Carrots")
Food.create!(meal_type: s, dish: "Peanuts")
Food.create!(meal_type: s, dish: "Potato Chips")

50.times do
    Movie.create!(title: Faker::Book.title, date: Faker::Date.backward(days: 15000), genre: Faker::Book.genre)
end


Plane.create!(model: "Boeing 747-8", seat_count: 410, wifi?: true)
Plane.create!(model: "Boeing 777-300ER", seat_count: 336, wifi?: false)
Plane.create!(model: "Boeing 787", seat_count: 242, wifi?: true)


100.times do
    Passenger.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.male_first_name, middle_name: Faker::Name.male_first_name, dob: Faker::Date.birthday(min_age: 4, max_age: 90), suffix: Faker::Name.suffix, phone: Faker::PhoneNumber.cell_phone, gender: "M")
    Passenger.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.female_first_name, middle_name: Faker::Name.female_first_name, dob: Faker::Date.birthday(min_age: 4, max_age: 90), suffix: Faker::Name.suffix, phone: Faker::PhoneNumber.cell_phone, gender: "F")
end

flights = 30
n = 1
flights.times do
    depart = Faker::Address.state
    arrive = Faker::Address.state
    datetime = Faker::Time.between(from: DateTime.now, to: DateTime.now + 12000)
    Flight.create!(passenger_id: rand(150) + 1, plane_id: rand(3) + 1, depart: depart, arrive: arrive, departure: datetime)
    Flight.create!(passenger_id: rand(150) + 1, plane_id: rand(3) + 1, status: "DELAYED", depart: depart, arrive: arrive, departure: datetime)
    10.times {Ff.create!(food_id: rand(5) + 1, flight_id: n)}
    3.times {Mf.create!(movie_id: rand(50) + 1 , flight_id: n)}
    n += 1
end

puts "Seeding Complete!"