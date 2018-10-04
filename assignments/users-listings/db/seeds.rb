200.times do |i|
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    email = Faker::Internet.email
    title = Faker::Job.title # The first title...
    
    User.create(first_name: first_name, last_name: last_name, email: email, position: title) # <= ... goes to this title
end