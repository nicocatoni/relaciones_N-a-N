# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Album.destroy_all
  User.destroy_all
  Task.destroy_all

  Task.create([
  {name: 'Bailoteo', photo: "https://picsum.photos/id/#{1002}/600"},
  {name: 'baile perreador', photo: "https://picsum.photos/id/#{1010}/600"},
  {name: 'Ir a una fonda', photo: "https://picsum.photos/id/#{1016}/600"},
  {name: 'Tomar terremoto', photo: "https://picsum.photos/id/#{1014}/600"},
  {name: 'Tomar replica', photo: "https://picsum.photos/id/#{1005}/600"},
  {name: 'Curarse', photo: "https://picsum.photos/id/#{1006}/600"},
  {name: 'Jugar a la rayuela', photo: "https://picsum.photos/id/#{1008}/600"},
  {name: 'Jugar la llincana', photo: "https://picsum.photos/id/#{1013}/600"},
  {name: 'Comer asadito', photo: "https://picsum.photos/id/#{1015}/600"},
  ])
