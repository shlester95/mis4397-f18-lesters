def condition
    conditionsArray = ["new", "like new", "good", "acceptable"]
    selection = conditionsArray.shuffle.first
end

#Dealerships
4.times do |i|
    Dealership.create(name: "#{Faker::Company.name} AutoSales", address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip, owner: Faker::Name.name)
end

#Salesmen
10.times do |i|
    Salesman.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

#Cars
200.times do |i|
    Car.create(model: Faker::Vechicle.make_and_model, year: Faker::Vehicle.year, condition: condition, location_address: Faker::Address.street_address, location_city: Faker::Address.city, location_state: Faker::Address.state, location_zip: Faker::Address.zip, price: Faker::Number.decimal(5, 2), )
end

#Prospects
100.times do |i|
    #complete
end