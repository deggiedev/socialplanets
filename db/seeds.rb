# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'yay', password_digest: 'amazing', native_species: 'Wabbajackas')

User.create(username: 'Killa', password_digest: 'fuckoff', native_species: 'Utopi')

planets_seed = Planet.create([{ planet_name: 'Tartarus', stage: 1, high_score: 500, user_id: 1 }, { planet_name: 'Volkihar', stage: 1, high_score: 750, user_id: 2 }])

materials_seed = Material.create([{ material_type: 'water', material_total: 240, planet_id: 1 }, { material_type: 'iron', material_total: 80, planet_id: 2 }])


activities_seed = Activity.create([{ activity_name: 'Maths question', base_reward: 100, primary_stage: 1 }, { activity_name: 'Random question', base_reward: 150, primary_stage: 1}])

questions_seed = Question.create([{ content: 'What is 30 divided by 15?', answer: '2', choice_a: '5', choice_b: '20', choice_c: '2', choice_d: '12', material_id: 1, activity_id: 1 }, { content: 'What kind of vision does a dog have?', answer: 'Black and White', choice_a: 'Same as humans', choice_b: 'Black and White', choice_c: 'Ultraviolet', choice_d: 'Sepia', material_id: 2, activity_id: 2 }])

puts 'Seeded Successfully'