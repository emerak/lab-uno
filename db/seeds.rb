# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# this could be thought find or create within a transaction block
zoos = Zoo.create([
                    { name: 'San Diego Zoo' },
                    { name: 'Metropolitan Zoo' },
                    { name: 'Chapultepec Zoo' },
                    { name: 'Australian Zoo' },
                    { name: 'Santa Fe Zoo' },
                    { name: 'Zoologico de la ciudad de mexico' },
                    { name: 'Zoologico de Veracruz' },
                    { name: 'Mx city Zoo' },
                    { name: 'Adventure time Zoo' },
                    { name: 'Parque Regional' },
                    { name: 'Central Park Zoo' },
                    { name: 'Jurasic Park Zoo' },
                    { name: 'Zoologico de Guadalajara' }
                  ])

species = Specie.create([{ name: 'Monkey' }, { name: 'Eagle' }, { name: 'Rabbit' }])

Animal.create([
                { name: 'Fin', zoo_id: zoos.last.id, specie_id: species.first.id },
                { name: 'Princess Consuela', zoo_id: zoos.last.id, specie_id: species.last.id },
                { name: 'Marceline', zoo_id: zoos.last.id, specie_id: species.first.id },
                { name: 'Jumbo', zoo_id: zoos.last.id, specie_id: species.first.id },
                { name: 'Paqui',  zoo_id: zoos.first.id, specie_id: species.first.id },
                { name: 'Ricky',  zoo_id: zoos.sample.id, specie_id: species.first.id },
                { name: 'Tom', zoo_id: zoos.sample.id, specie_id: species.first.id },
                { name: 'Gary', zoo_id: zoos.sample.id, specie_id: species.first.id },
                { name: 'Bob', zoo_id: zoos.first.id, specie_id: species.first.id },
                { name: 'Fiona',  zoo_id: zoos.first.id, specie_id: species.sample.id },
                { name: 'Mavel',  zoo_id: zoos.first.id, specie_id: species.sample.id },
                { name: 'Onix', zoo_id: zoos.first.id, specie_id: species.sample.id }
              ])
