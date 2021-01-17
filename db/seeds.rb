# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meeting.destroy_all
Room.destroy_all

puts "Criando as Salas"

cleo = Room.create(name: "Sala Cleopatra", capacity: 10, floor: 2)
hawk = Room.create(name: "Sala Hawking", capacity: 15, floor: 2)
mlkj = Room.create(name: "Sala Luther King", capacity: 8, floor: 2)
rosa = Room.create(name: "Sala Parks", capacity: 20, floor: 3)
sant = Room.create(name: "Sala Dummont", capacity: 5, floor: 4)
alan = Room.create(name: "Sala Turing", capacity: 20, floor: 4)

puts "Salas criadas"

puts "Criando Reuniões"

Meeting.create(room: cleo, user_id: 2, duration_minutes: 30, date: "21/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user_id: 3, duration_minutes: 60, date: "21/01/2021", start_time:"09:00", title: "Plano de Marketing")
Meeting.create(room: cleo, user_id: 2, duration_minutes: 120, date: "21/01/2021", start_time:"12:00", title: "Plano 2o trimestre")

puts "Reuniões Criadas"




