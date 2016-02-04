# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sports = Sport.create([{ name: 'Football' }, { name: 'Basketball' }, { name: 'Running' }])

users = User.create([{ name: 'Kerwin'}, { name: 'Vova'}, { name: 'Karli'}])

events = Event.create([{location: 'Ujula 4A, 51008 Tartu',  start_time: '2016-02-10 17:00:00', duration: 2, user_id: 1, sport_id: 1, registration_limit: 20, registration_min: 5},
		{location: '51004, Küüni 7, 51004 Tartu',  start_time: '2016-02-10 17:00:00', duration: 2, user_id: 2, sport_id: 2, registration_limit: 20, registration_min: 5},
		{location: 'Munga 12, 51007 Tartu',  start_time: '2016-02-10 17:00:00', duration: 2, user_id: 2, sport_id: 2, registration_limit: 20, registration_min: 5},
		{location: '50404 Tartu',  start_time: '2016-02-10 17:00:00', duration: 2, user_id: 3, sport_id: 3, registration_limit: 20, registration_min: 5}
		])