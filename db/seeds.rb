# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Organization.create(name: "League of Women Voters", contact_info: "lwv.org" )
Organization.create(name: "Women's March Emporia Chapter", contact_info: "wmec@wmglobal.org" )
Organization.create(name: "ACLU of KS", contact_info: "acluks@aclu.org" )

User.create(name: 'John Doe', password: 'password', cell_phone: '212-322-4211', email: 'john@abc.com', uid: '1', image: 'https://tinyurl.com/yaqwaujs')
User.create(name: 'Mark Twain', password: 'password', cell_phone: '312-234-4311', email: 'mark@abc.com', uid: '2', image: 'https://tinyurl.com/yaqwaujs')
User.create(name: 'Ralph Cramden', password: 'password', cell_phone: '512-372-6211', email: 'ralph@abc.com', uid: '3', image: 'https://tinyurl.com/yaqwaujs')
User.create(name: 'Lucille Ball', password: 'password', cell_phone: '404-332-4271', email: 'lucy@abc.com', uid: '4', image: 'https://tinyurl.com/yaqwaujs' )
User.create(name: "Louie", password: 'password', cell_phone: '508-424-2543', email: "goodkitty@purrsalot.com", uid: '5', image: 'https://tinyurl.com/yaqwaujs')
User.create(name: "Barry", password: 'password', cell_phone: '202-555-1111', email: "theprez@therealprez.gov", uid: '4', image: 'https://tinyurl.com/yaqwaujs')
User.create(name: "BobGee", password: 'password', cell_phone: '202-423-1233', email: "bobgrover1942@gmail.com", uid: '4', image: 'https://tinyurl.com/yaqwaujs')

Event.create(name: "Rock the Vote", cause: "Voter Turnout" , organization_id: 1, location: "ESU Campus", datetime: "Nov 6, 2018")
Event.create(name: "Women's March", cause: "Equality" , organization_id: 2, location: "Ellen Plumb's Bookstore", datetime: "Nov 12, 2018")
Event.create(name: "Celebrate Diversity", cause: "Community Organizing" , organization_id: 3, location: "Emporia Public Library", datetime: "Jan 10, 2019")
  
Happening.create(event_id: 1, user_id: 1, attend: false, need_ride: false, can_drive: false)
Happening.create(event_id: 2, user_id: 2, attend: false, need_ride: false, can_drive: false)
Happening.create(event_id: 3, user_id: 3, attend: false, need_ride: false, can_drive: false)
  