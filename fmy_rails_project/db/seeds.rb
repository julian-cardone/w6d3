# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

CreateUsers.create!(username: "Kyle01")
CreateUsers.create!(username: "Tyler02")
Artwork.create!(title: "Mona Lisa", image_url: "www.monalisa.com", artist_id: 1)
Artwork.create!(title: "Claire", image_url: "www.claire.com", artist_id: 2)
ArtworkShare.create!(artwork_id: 1, viewer_id: 2)
ArtworkShare.create!(artwork_id: 2, viewer_id: 1)

