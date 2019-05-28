# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying offerings"
Offering.destroy_all
puts 'Creating offerings...'
offerings_attributes = [
  {
    name:         'Mojito',
    price_hour: 1000,
    genre: 'alternative rock',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    user_id: '1'
  },

  {
    name:         'Old Fashioned',
    price_hour: 850,
    genre: 'rap',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    user_id: '2'
  }

]

#user = User.create!(first_name: "aida", last_name: "nounourse", email: "aida@gmail.com", encrypted_password: "123456" )
offering = Offering.create!(offerings_attributes)
puts "done"
