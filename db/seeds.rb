# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 user = User.create(email: 'bpawan96@gmail.com', password: 'pass@123', username: 'bpawan_007', name: 'Pawan', phone: '+919632587410', gender: 'Male')
 puts user.username + " created!"