# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.create(name: Faker::Name.name,
                  birth_date: Faker::Date.birthday(2, 10),
                  sex: %w(M F).sample,
                  color: ["brown", "orange", "white", "black", "grey", "calico"].sample,
                  description: Faker::RickAndMorty.quote)


Cat.create(name: Faker::Name.name,
                  birth_date: Faker::Date.birthday(2, 10),
                  sex: %w(M F).sample,
                  color: ["brown", "orange", "white", "black", "grey", "calico"].sample,
                  description: Faker::RickAndMorty.quote)


Cat.create(name: Faker::Name.name,
                  birth_date: Faker::Date.birthday(2, 10),
                  sex: %w(M F).sample,
                  color: ["brown", "orange", "white", "black", "grey", "calico"].sample,
                  description: Faker::RickAndMorty.quote)


Cat.create!(name: Faker::Name.name,
                  birth_date: Faker::Date.birthday(2, 10),
                  sex: %w(M F).sample,
                  color: ["brown", "orange", "white", "black", "grey", "calico"].sample,
                  description: Faker::RickAndMorty.quote)


Cat.create(name: Faker::Name.name,
                  birth_date: Faker::Date.birthday(2, 10),
                  sex: %w(M F).sample,
                  color: ["brown", "orange", "white", "black", "grey", "calico"].sample,
                  description: Faker::RickAndMorty.quote)
