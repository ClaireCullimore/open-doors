# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating restaurants..."
junior = { title: "Junior Developer", company: "Facebook", location: "London", terms: "FullTime", description: "Great job" }
grad =  { title: "Graduate", company: "Twitter", location: "Manchester", terms: "Partime", description: "Fun Company"  }

[ junior, grad ].each do |attributes|
  job = Job.create!(attributes)
  puts "Created #{job.title}"
end
puts "Finished!"
