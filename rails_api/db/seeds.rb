# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
agent = Agent.create!(username: 'agent1', email: 'agent1@company.com', first_name: 'Maxwell', last_name: 'Headroom', phone_extension: 'x1234')
Callback.create!(phone_number: '(555) 555-5555', notify_on: Time.now + 5.days, callback_on: Time.now + 6.days, caller: agent)
