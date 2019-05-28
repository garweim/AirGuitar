# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD

# offering= Offering.new(offerings_attributes)



Offering.create!(
  name: "Ntm",
  price_hour: 200,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nibh diam, scelerisque eu felis vel, aliquet congue lorem. Sed mollis congue ex. Vivamus diam nulla, viverra ut mauris ac, bibendum mollis augue. Aliquam in pellentesque nulla. Fusce consectetur diam ac mi vulputate sodales. Aenean gravida ultricies vulputate. In fermentum convallis interdum. Nullam vehicula porttitor quam id facilisis.",
  genre: "Rap",
  user_id: User.all.sample.id
  )

Offering.create!(
  name: "Beattles",
  price_hour: 300,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nibh diam, scelerisque eu felis vel, aliquet congue lorem. Sed mollis congue ex. Vivamus diam nulla, viverra ut mauris ac, bibendum mollis augue. Aliquam in pellentesque nulla. Fusce consectetur diam ac mi vulputate sodales. Aenean gravida ultricies vulputate. In fermentum convallis interdum. Nullam vehicula porttitor quam id facilisis.",
  genre: "Rock",
  user_id: User.all.sample.id
)

Offering.create!(
  name: "Hall Jazz Band",
  price_hour: 200,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nibh diam, scelerisque eu felis vel, aliquet congue lorem. Sed mollis congue ex. Vivamus diam nulla, viverra ut mauris ac, bibendum mollis augue. Aliquam in pellentesque nulla. Fusce consectetur diam ac mi vulputate sodales. Aenean gravida ultricies vulputate. In fermentum convallis interdum. Nullam vehicula porttitor quam id facilisis.",
  genre: "Jazz ",
  user_id: User.all.sample.id
)

Offering.create!(
  name: "polo & pan",
  price_hour: 400,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nibh diam, scelerisque eu felis vel, aliquet congue lorem. Sed mollis congue ex. Vivamus diam nulla, viverra ut mauris ac, bibendum mollis augue. Aliquam in pellentesque nulla. Fusce consectetur diam ac mi vulputate sodales. Aenean gravida ultricies vulputate. In fermentum convallis interdum. Nullam vehicula porttitor quam id facilisis.",
  genre: "Electro",
  user_id: User.all.sample.id
)

Offering.create!(
  name: "Maluma",
  price_hour: 1000,
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nibh diam, scelerisque eu felis vel, aliquet congue lorem. Sed mollis congue ex. Vivamus diam nulla, viverra ut mauris ac, bibendum mollis augue. Aliquam in pellentesque nulla. Fusce consectetur diam ac mi vulputate sodales. Aenean gravida ultricies vulputate. In fermentum convallis interdum. Nullam vehicula porttitor quam id facilisis.
",
  genre: "Music of the World",
  user_id: User.all.sample.id
)



=======
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
>>>>>>> a88d4805a27c7892ce31f4fc4e03dc2f1bb8c429
