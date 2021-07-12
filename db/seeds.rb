# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'microsoft@gmail.com', first_name: 'microsoft', last_name: 'windows', password: 'password', filling_position: false)
User.create(email: 'apple@gmail.com', first_name: 'apple', last_name: 'ios', password: 'password', filling_position: false)
User.create(email: 'bill@gmail.com', first_name: 'Bill', last_name: 'Gates', password: 'password', filling_position: true)
User.create(email: 'steve@gmail.com', first_name: 'Steve', last_name: 'Jobs', password: 'password', filling_position: true)

Job.create(title: 'Web Developer', code: '100', description: 'Make webapps.', industry: 'IT', function: 'Web Developer', location: 'Remote')
Job.create(title: 'Software Developer', code: '100', description: 'Make apps.', industry: 'IT', function: 'Software Developer', location: 'Remote')
Job.create(title: 'Train Conductor', code: '300', description: 'Operate train.', industry: 'Transportation', function: 'Train Conductor', location: 'New York')
Job.create(title: 'Driver', code: '300', description: 'Drive car.', industry: 'Transportation', function: 'Driver', location: 'New York')
Job.create(title: 'Graphics Artist', code: '200', description: 'Make art.', industry: 'Art', function: 'Graphics Artist', location: 'Washington')
Job.create(title: 'Mobile Developer', code: '100', description: 'Make mobile apps.', industry: 'IT', function: 'Mobile Developer', location: 'California')
Job.create(title: 'Web Developer', code: '100', description: 'Make webapps.', industry: 'IT', function: 'Web Developer', location: 'New York')
