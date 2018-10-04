# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do |i|
    employee_first_name = Faker::Name.first_name
    employee_last_name = Faker::Name.last_name
    employee_email = Faker::Internet.email
    employee_id = Faker::IDNumber.spanish_citizen_number #Needs to be finished
    
    Employee.create(employee_first_name: employee_first_name, employee_last_name: employee_last_name, employee_email: employee_email, employee_id: employee_id)
end