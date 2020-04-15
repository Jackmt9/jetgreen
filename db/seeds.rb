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


Food.create!(meal_type: b, dish: "Yogurt")
Food.create!(meal_type: b, dish: "Fruit Cup")
Food.create!(meal_type: b, dish: "Cereal")
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


50.times do
    Movie.create!(title: Faker::Book.title, date: Faker::Date.backward(days: 15000), genre: Faker::Book.genre)
end


Plane.create!(model: "Boeing 747-8", seat_count: 410, wifi?: true)
Plane.create!(model: "Boeing 777-300ER", seat_count: 336, wifi?: false)
Plane.create!(model: "Boeing 787", seat_count: 242, wifi?: true)

n = 1
30.times do
    depart = Faker::Address.state
    arrive = Faker::Address.state
    datetime = Faker::Time.between(from: DateTime.now, to: DateTime.now + 12000)
    flight = Flight.create!(plane_id: rand(3) + 1, depart: depart, arrive: arrive, departure: datetime)
    
    30.times do
        a1 = Passenger.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.male_first_name, middle_name: Faker::Name.male_first_name, dob: Faker::Date.birthday(min_age: 4, max_age: 90), suffix: Faker::Name.suffix, phone: Faker::PhoneNumber.cell_phone, gender: "M")
        a2 = Passenger.create!(last_name: Faker::Name.last_name, first_name: Faker::Name.female_first_name, middle_name: Faker::Name.female_first_name, dob: Faker::Date.birthday(min_age: 4, max_age: 90), suffix: Faker::Name.suffix, phone: Faker::PhoneNumber.cell_phone, gender: "F")
        Pf.create!(passenger: a1, flight: flight)
        Pf.create!(passenger: a2, flight: flight)
    end

    f_hour = flight.departure.localtime.hour
    if f_hour < 12
        f = 1
        5.times {
            Ff.create!(food_id: f, flight_id: n)
            f += 1
        }
    elsif f_hour >= 12 && f_hour < 15
        f = 6
        5.times {
            Ff.create!(food_id: f, flight_id: n)
            f += 1
        }
    elsif f_hour >= 15
        f = 11
        5.times {
            Ff.create!(food_id: f, flight_id: n)
            f += 1
        }
    end

    n += 1
end

puts "Seeding Complete!"