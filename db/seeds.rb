require 'csv'

puts "destroying all"

Airport.destroy_all
# User.destroy_all

# puts "user created"
# user1 = User.create!(email:'agwright72@gmail.com', confirmation_token: 'MhMwV3uvqsgaNpWPHcS7', password:'clock1', first_name: 'Adrian', last_name: 'Wright')

print "Seeding airports..."
CSV.foreach("./data/airports.csv", headers: true) do |row|
  airport = row.to_h
  Airport.create!(name: airport["name"],
                  airport_code: airport["iata"])
end

puts "Airports created."

