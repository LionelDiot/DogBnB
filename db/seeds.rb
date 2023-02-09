# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

100.times do
  city = City.create!(city_name: Faker::Address.city)
end

100.times do
  dogsitter = DogSitter.create!(
    name: Faker::Name.name,
    city: City.all.sample
  )
end

100.times do
  dog = Dog.create!(
    name: Faker::Creature::Dog.name,
    city: City.all.sample
  )
end

100.times do
  stroll = Stroll.create!(
    dog_sitter: DogSitter.all.sample
  )
  
end
100.times do
  dog = Dog.all.sample
  stroll = Stroll.all.sample
  
  # Check if the combination of dog and stroll is unique
  if !DogStroll.exists?(dog: dog, stroll: stroll) 
    dog_stroll = DogStroll.create!(
      dog: dog,
      stroll: stroll
    )
  end
end