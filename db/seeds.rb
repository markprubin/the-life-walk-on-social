# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create!(first_name: "Mark", last_name: "Rubin", email: "mark@example.com", password: "password", image_url: "https://i.imgur.com/VdJQsjf.png", phone: "555-555-5555", birth_date: "1991-02-22", home_address: "123 Central, Phoenix, AZ 85028", bio: "This is my bio.", admin: true)
User.create!(first_name: "Tom", last_name: "Hanks", email: "wilson@fedex.com", password: "password", image_url: "https://media1.popsugar-assets.com/files/thumbor/Pm-91vpz-vi3_yrS2PMioQyeGdI/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2020/12/16/927/n/1922283/0196b2b55fda78d927ce09.12541490_/i/polar-express-movie-tom-hanks-characters.jpg", phone: "123-555-5555", birth_date: "1956-07-09", home_address: "456 Main St, New York City, NY 10001", bio: "This is Wilson's bio.", admin: false)