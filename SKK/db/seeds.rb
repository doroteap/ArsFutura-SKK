# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ticket.destroy_all
Trip.destroy_all
Operator.destroy_all
User.destroy_all

User.create!(email: "dorotea@znaruby.com", password: "123456")


operators = Operator.create!([{
    name: "Clissa"
},
{
    name: "Čazma"
},
{
    name: "Hž"
}])

#try with faker https://davidmles.com/seeding-database-rails/

Trip.create!([{
    departure: "1/8/2020 8:00",
    arrival: "1/8/2020 10:00",
    available_seats: 10,
    operator_id: operators[0].id
},
{
    departure: "1/8/2020 10:00",
    arrival: "1/8/2020 14:00",
    available_seats: 25,
    operator_id: operators[1].id
},
{
    departure: "1/8/2020 8:00",
    arrival: "1/8/2020 18:00",
    available_seats: 100,
    operator_id: operators[2].id
},
{
    departure: "2/8/2020 8:00",
    arrival: "2/8/2020 10:00",
    available_seats: 1,
    operator_id: operators[0].id
},
{
    departure: "2/8/2020 19:00",
    arrival: "2/8/2020 22:00",
    available_seats: 31,
    operator_id: operators[1].id
},
{
    departure: "2/8/2020 22:00",
    arrival: "3/8/2020 10:00",
    available_seats: 14,
    operator_id: operators[2].id
},
{
    departure: "4/8/2020 8:00",
    arrival: "4/8/2020 10:00",
    available_seats: 20,
    operator_id: operators[0].id
}])



p "Created #{Operator.count} operators"
p "Created #{User.count} users"
p "Created #{Trip.count} trips"
