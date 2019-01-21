# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

email = "@gmail.com"
name = "qw"

for x in [5, 6, 7, 8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24] do
  user = User.new(
  name: name + x.to_s + "mn",
  email: name + x.to_s +  email,
  password: "123456",
  password_confirmation: "123456"
	)
user.save!
end
