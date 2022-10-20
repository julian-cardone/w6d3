# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

CreateUsers.create!(username: "Kyle01")
CreateUsers.create!(username: "Tyler02")
CreateUsers.create!(username: "Bobby409")
CreateUsers.create!(username: "Cupp2003")
Artwork.create!(title: "Mona Lisa", image_url: "www.monalisa.com", artist_id: 1)
Artwork.create!(title: "Claire", image_url: "www.claire.com", artist_id: 2)
Artwork.create!(title: "Dog", image_url: "www.dogg2.com", artist_id: 2)
Artwork.create!(title: "Cat is cool", image_url: "www.cat2344.com", artist_id: 3)
ArtworkShare.create!(artwork_id: 1, viewer_id: 2)
ArtworkShare.create!(artwork_id: 1, viewer_id: 3)
ArtworkShare.create!(artwork_id: 1, viewer_id: 4)
ArtworkShare.create!(artwork_id: 2, viewer_id: 3)
ArtworkShare.create!(artwork_id: 2, viewer_id: 4)
Comment.create!(body: "Very nice painting!", author_id: 4, artwork_id: 3)
Comment.create!(body: "bad painting!", author_id: 2, artwork_id: 3)
Comment.create!(body: "meh painting!", author_id: 1, artwork_id: 3)
Comment.create!(body: "Very cool painting!", author_id: 4, artwork_id: 1)
Comment.create!(body: "nice painting!", author_id: 2, artwork_id: 1)
Comment.create!(body: "bleh painting!", author_id: 3, artwork_id: 1)

