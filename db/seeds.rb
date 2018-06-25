# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
Event.create!(title: 'Laundry',
              description: 'you have to do laundry',
              start_time: Time.zone.parse('2018-06-04 20:00'),
              end_time: Time.zone.parse('2018-06-04 21:00'),
              all_day: false)

Event.create!(title: 'Walk the dog',
              description: 'dog needs walking',
              start_time: Time.zone.parse('2018-06-04 20:00'),
              end_time: Time.zone.parse('2018-06-04 21:00'),
              all_day: false)

Event.create!(title: 'Bake cookies',
              description: 'cookies needs cooking',
              start_time: Time.zone.parse('2018-06-04 20:00'),
              end_time: Time.zone.parse('2018-06-04 21:00'),
              all_day: false)
