class Car

   attr_accessor :make
   attr_accessor :model
   attr_accessor :year
   attr_accessor :license_plate
   attr_accessor :color

   def initialize(make, model, year, license_plate, color)
       @make = make
       @model = model
       @year = year
       @license_plate = license_plate
       @color = color
   end
end

car_one = Car.new("Toyota", "4Runner", "2001", "AAZP796", "White")
car_two = Car.new("Honda", "Civic", "2006", "EZM6574", "Silver")


puts "Car Profile: #{car_one.make} #{car_one.model} car_one.#{year} car_one.#{license_plate} car_one.#{color}"

# puts car_one.make
# puts car_one.model
# puts car_one.year
# puts car_one.license_plate
# puts car_one.color