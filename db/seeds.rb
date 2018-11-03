# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DATA = {
  :event_keys =>
  	 ["name", "cause", "organization_id",  "created_at", "updated_at", "location", "datetime"],
  :events => [
    ["Rock the Vote", "Voter Turnout", nil, "ESU Campus", "Nov 6, 2018"],
    ["Women's March", "Equality", nil, "Ellen Plumb's Bookstore", "Nov 12, 2018"],
    ["Celebrate Diversity", "Community Organizing", nil, "Emporia Public Library", "Jan 10, 2019"],
  ],
  :user_keys => 
  	["name", "password_digest", "cell_phone", "email", "created_at", "updated_at", "uid", "image"],
  :users => [
    ["Louie", nil, "goodkitty@purrsalot.com", nil, nil, "password"],
    ["Barry", "202-555-1111", "theprez@therealprez.gov", nil, nil, "password"],
    ["BobGee", nil, "bobgrover1942@gmail.com", nil, nil, "password"],
  ],
  :organization_keys =>
   ["name", "contact_info", "created_at", "updated_at"],
   :organization => [
   	["League of Women Voters", "lwv.org", nil, nil],
   	["Women's March Emporia Chapter", "wmec@wmglobal.org", nil, nil]
   	["ACLU of KS", "acluks@aclu.org", nil, nil]
   ], 
  :happening_keys => 
  	["event_id", "user_id", "created_at", "updated_at", "can_drive", "attend", "need_ride"],
  [
    
  ]
}

  