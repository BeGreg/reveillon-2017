# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "creating participants"

# Participant.create(name: "Blallain", number: "4", participate: true, sleepover: true )
# Participant.create(name: "Thorlin", number: "4", participate: nil, sleepover: false )
# Participant.create(name: "Valrand", number: "3", participate: nil, sleepover: false )
# Participant.create(name: "Marchet", number: "4", participate: nil, sleepover: false )
# Participant.create(name: "Fichet", number: "4", participate: nil, sleepover: false )
# Participant.create(name: "Picaton", number: "3", participate: nil, sleepover: false )
# Participant.create(name: "Bigoupillon", number: "2", participate: nil, sleepover: false )

puts "crating accomodations"

# Accomodation.create(name: "Suite", nb_persons: "2", participant_id:1)
# Accomodation.create(name: "Lit Elise", nb_persons: "1", participant_id:1)
Accomodation.create(name: "Lit Camille", nb_persons: "1", participant_id: 1)
# Accomodation.create(name: "Chambre ami", nb_persons: "2", participant_id: nil)
# Accomodation.create(name: "Canapé", nb_persons: "2", participant_id: nil)
# Accomodation.create(name: "Matelas", nb_persons: "2", participant_id: nil)
# Accomodation.create(name: "Lit enfant", nb_persons: "1", participant_id: nil)
# Accomodation.create(name: "Place sous-sol 1", nb_persons: "1", participant_id: nil, comment: "amener son matelas à gonfler")
# Accomodation.create(name: "Place sous-sol 2", nb_persons: "1", participant_id: nil,  comment: "amener son matelas à gonfler")
