# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(user_name: 'jack', password: 'password1', native_species: 'human')
planet_1 = Planet.create(planet_name: 'planet test', planet_stage: '1', user_id: 1, activity_id: 1)
activity_1 = Activity.create(name: 'mining', reward: 10, stage: 1, planet_id: 1, question_id: 1)
question_1 = Question.create(content: 'Titan is a moon of which Planet in our Solar System?', resource_id: 1, answer: 'Saturn', opt1: 'Jupiter', opt2: 'Saturn', opt3: 'Uranus')
resource_1 = Resource.create(name: 'Helium 3')
