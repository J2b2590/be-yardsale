# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create(name: "NAME")


# shirt = Item.create(name: "polo", price: "3.50", user: user1)

50.times do

    note_one = Item.create(name: Faker::Appliance.equipment, price: Faker::Number.decimal(l_digits: 2), user: user1)
    
end

