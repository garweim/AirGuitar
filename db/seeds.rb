# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# offering= Offering.new(offerings_attributes)
User.destroy_all
User.create!(email: 'geoffroy@gmail.com', first_name: 'Geoffroy', last_name: 'vdp', password: '123456')
User.create!(email: 'ken@gmail.com', first_name: 'ken', last_name: 'sony', password: '123456')
User.create!(email: 'barbie@gmail.com', first_name: 'barbie', last_name: 'bebelle', password: '123456')
User.create!(email: 'didier@gmail.com', first_name: 'didier', last_name: 'de wasseige', password: '123456')
User.create!(email: 'aida@gmail.com', first_name: 'aida', last_name: 'bennouna', password: '123456')
User.create!(email: 'gary@gmail.com', first_name: 'gary', last_name: 'weimberg', password: '123456')






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


puts "done"

