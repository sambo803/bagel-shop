# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bagel = Bagel.new(flavor: "blueberrry", toasted: 1, topping: "plain_cream_cheese", price: 2)
bagel.save
bagel = Bagel.new(flavor: "jalapeno", toasted: 1, topping: "jalapeno_cream_cheese", price: 2)
bagel.save
