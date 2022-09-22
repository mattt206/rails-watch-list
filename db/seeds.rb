# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require "json"
require "open-uri"

Movie.destroy_all

# 5.times do Movie.create(
#   title: Faker::Movie.title,
#   overview: Faker::Movie.quote,
#   poster_url: Faker::LoremFlickr.image,
#   rating: rand(1.0..10.0).floor(2)
# )
# end

url = "https://tmdb.lewagon.com/movie/top_rated?api_key=%3Ctmdb.lewagon.com%3E"
movie_serialized = URI.open(url).read
result = JSON.parse(movie_serialized)

15.times do |num|
  Movie.create(
    title: result["results"][num]["title"],
    overview: result["results"][num]["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500/#{result['results'][num]['poster_path']}",
    rating: rand(5.0..10.0).floor(2)
  )
end
