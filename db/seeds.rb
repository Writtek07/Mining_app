# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(email: "tech@gmail.com", password: "password", password_confirmation: "password", role: 0)
Department.create(name: "Tech", user_id: user.id)

user = User.create(email: "finance@gmail.com", password: "password", password_confirmation: "password", role: 0)
Department.create(name: "Finance", user_id: user.id)

user = User.create(email: "hr@gmail.com", password: "password", password_confirmation: "password", role: 0)
Department.create(name: "Hr", user_id: user.id)

user = User.create(email: "marketing@gmail.com", password: "password", password_confirmation: "password", role: 0)
Department.create(name: "Marketing", user_id: user.id)