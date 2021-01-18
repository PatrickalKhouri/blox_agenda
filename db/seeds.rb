# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meeting.destroy_all
Room.destroy_all
User.destroy_all

pat = User.create(email: "patrick.darya@gmail.com", first_name: "Patrick", last_name: "Khouri", password: "123456")
luiza = User.create(email: "luizacampos@gmail.com", first_name: "Luiza", last_name: "Campos", password: "123456")
thiago = User.create(email: "thiagoferraz@gmail.com", first_name: "Thiago", last_name: "Ferraz", password: "123456")
jessica = User.create(email: "jessicazager@gmail.com", first_name: "Jessica", last_name: "Zager", password: "123456")
leo = User.create(email: "leonardopinho@gmail.com", first_name: "Leonardo", last_name: "Pinho", password: "123456")


puts "Criando as Salas"

cleo = Room.create(name: "Sala Cleopatra", capacity: 10, floor: 2)
hawk = Room.create(name: "Sala Hawking", capacity: 15, floor: 2)
mlkj = Room.create(name: "Sala Luther King", capacity: 8, floor: 2)
rosa = Room.create(name: "Sala Parks", capacity: 20, floor: 3)
sant = Room.create(name: "Sala Dummont", capacity: 5, floor: 4)
alan = Room.create(name: "Sala Turing", capacity: 20, floor: 4)

puts "Salas criadas"

puts "Criando Reuniões"


# Reuniões de Marketing
Meeting.create(room: mlkj, user: luiza, duration_minutes: 60, date: "18/01/2021", start_time:"09:00", title: "Reunião Semanal de Marketing")
Meeting.create(room: mlkj, user: luiza, duration_minutes: 60, date: "25/01/2021", start_time:"09:00", title: "Reunião Semanal de Marketing")
Meeting.create(room: mlkj, user: luiza, duration_minutes: 60, date: "01/02/2021", start_time:"09:00", title: "Reunião Semanal de Marketing")
Meeting.create(room: mlkj, user: luiza, duration_minutes: 60, date: "08/02/2021", start_time:"09:00", title: "Reunião Semanal de Marketing")
Meeting.create(room: mlkj, user: luiza, duration_minutes: 60, date: "15/02/2021", start_time:"09:00", title: "Reunião Semanal de Marketing")
Meeting.create(room: mlkj, user: luiza, duration_minutes: 60, date: "22/02/2021", start_time:"09:00", title: "Reunião Semanal de Marketing")

# Reuniões Matinais

Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "04/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "05/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "06/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "07/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "08/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "11/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "12/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "13/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "14/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "15/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "18/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "19/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "20/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "21/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "22/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "25/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "26/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "27/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "28/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "29/01/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "01/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "02/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "03/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "04/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "05/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "08/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "09/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "10/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "11/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "12/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "15/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "16/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "17/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "18/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "19/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "22/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "23/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "24/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "25/02/2021", start_time:"08:00", title: "Reunião Matinal")
Meeting.create(room: cleo, user: pat, duration_minutes: 30, date: "26/02/2021", start_time:"08:00", title: "Reunião Matinal")

# Reuniões Esporádicas

Meeting.create(room: rosa, user: thiago, duration_minutes: 30, date: "21/01/2021", start_time:"14:00", title: "Plano 2o trimestre")
Meeting.create(room: alan, user: leo, duration_minutes: 60, date: "25/01/2021", start_time:"10:00", title: "Reunião Cliente 1")
Meeting.create(room: sant, user: jessica, duration_minutes: 90, date: "29/01/2021", start_time:"09:30", title: "Fechamento Janeiro")
Meeting.create(room: hawk, user: jessica, duration_minutes: 120, date: "01/02/2021", start_time:"10:00", title: "Planejamento Fevereiro")
Meeting.create(room: mlkj, user: luiza, duration_minutes: 30, date: "09/02/2021", start_time:"15:30", title: "Melhorias site")
Meeting.create(room: mlkj, user: pat, duration_minutes: 60, date: "11/02/2021", start_time:"13:00", title: "Entrevista Candidata")
Meeting.create(room: cleo, user: leo, duration_minutes: 90, date: "15/02/2021", start_time:"09:00", title: "Evento Externo")
Meeting.create(room: alan, user: thiago, duration_minutes: 30, date: "16/02/2021", start_time:"16:30", title: "Call novo plano de vendas")
Meeting.create(room: rosa, user: luiza, duration_minutes: 90, date: "25/02/2021", start_time:"10:30", title: "Bate-Papo estagiários")
Meeting.create(room: sant, user: jessica, duration_minutes: 90, date: "26/02/2021", start_time:"09:30", title: "Fechamento Fevereiro")


puts "Reuniões Criadas"




