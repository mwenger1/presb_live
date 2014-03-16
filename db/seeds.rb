# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Adding tags"

Tag.create(name: 'A vintage scrapbook')
Tag.create(name: 'Animal fancying')
Tag.create(name: 'Amateur radio[1]')
Tag.create(name: 'Audiophilia')
Tag.create(name: 'Baton twirling')
Tag.create(name: 'Bboying')
Tag.create(name: 'Blogging')
Tag.create(name: 'Chainmail making')
Tag.create(name: 'Coloring')
Tag.create(name: 'Computer programming')
Tag.create(name: 'Conlanging')
Tag.create(name: 'Cooking')
Tag.create(name: 'Cosplaying')
Tag.create(name: 'Creative writing')
Tag.create(name: 'Crocheting')
Tag.create(name: 'Dance')
Tag.create(name: 'Digital arts')
Tag.create(name: 'Drama')
Tag.create(name: 'Drawing')
Tag.create(name: 'Drinking Coffee')
Tag.create(name: 'Eating')
Tag.create(name: 'Embroidery')
Tag.create(name: 'Fantasy Sports')
Tag.create(name: 'Fishkeeping')
Tag.create(name: 'Foreign language learning')
Tag.create(name: 'Gaming (tabletop games and role-playing games)')
Tag.create(name: 'Genealogy')
Tag.create(name: 'Genetic genealogy')
Tag.create(name: 'Herpetoculture')
Tag.create(name: 'Home Movies')
Tag.create(name: 'Homebrewing')
Tag.create(name: 'Jewelry making')
Tag.create(name: 'Juggling')
Tag.create(name: 'Knapping')
Tag.create(name: 'Knitting')
Tag.create(name: 'K-pop')
Tag.create(name: 'Lacemaking')
Tag.create(name: 'Lapidary')
Tag.create(name: 'Leather crafting')
Tag.create(name: 'Lego Building')
Tag.create(name: 'Locksport')
Tag.create(name: 'Magic')
Tag.create(name: 'Modeling')
Tag.create(name: 'Model Building')
Tag.create(name: 'Model Railroading')
Tag.create(name: 'Origami')
Tag.create(name: 'Painting')
Tag.create(name: 'Ping Pong')
Tag.create(name: 'Playing Musical Instrument')
Tag.create(name: 'Pottery')
Tag.create(name: 'Quilting')
Tag.create(name: 'RC cars')
Tag.create(name: 'Reading')
Tag.create(name: 'Scrapbooking')
Tag.create(name: 'Sculpting')
Tag.create(name: 'Sewing')
Tag.create(name: 'Singing')
Tag.create(name: 'Soapmaking')
Tag.create(name: 'Speedsolving')
Tag.create(name: 'Taxidermy')
Tag.create(name: 'Video Gaming')
Tag.create(name: 'Web surfing')
Tag.create(name: 'Wood carving')
Tag.create(name: 'Woodworking')
Tag.create(name: 'Worldbuilding')
Tag.create(name: 'Writing')
Tag.create(name: 'Yoga')
Tag.create(name: 'Yo-yoing')
Tag.create(name: 'Broken Back')
Tag.create(name: 'Pediatric asthma')
Tag.create(name: 'Febrile neutropenia')
Tag.create(name: 'Cystic Fibrosis')
Tag.create(name: 'Chemotherapy induction')
Tag.create(name: 'Pneumonia')
Tag.create(name: 'Cellulitis')
Tag.create(name: 'Prenatal Care')
Tag.create(name: 'Spinal fracture')
Tag.create(name: 'CABG')
Tag.create(name: 'CHF')
Tag.create(name: 'Intensive post-CVA Rehab')
Tag.create(name: 'Influenza in the elderly')
Tag.create(name: 'Confusion')
puts "ending healthtags"

puts "Starting hangouts"
h = Hangout.create(datetime: '2014-03-16 19:29:01 -0400', title: 'Prenatal Care', max_participants: '20', recordable: true, hangout_url: "https://plus.google.com/hangouts/_/72cpi203rt54mb01ihiqkg5lrs?hl=en", description: 'Sally Suthers will be providing an overview of nutrition and health during the third trimester.', user_id: '1')
h.health_tags << HealthTag.where(name: "Prenatal Care")
h.save


h = Hangout.create(datetime: '2014-03-17 19:29:01 -0400', title: 'Kids Group Drawing', max_participants: '20', recordable: true, hangout_url: "https://plus.google.com/hangouts/_/72cpi203rt54mb01ihiqkg5lrs?hl=en", description: 'Group hangout to draw collaboratively with others.', user_id: '2')
h.tags << Tag.where(name: "Drawing")
h.save


puts "ending hangouts"


puts "Adding users"

u = User.create(name: "Mike Wenger", email_address: "michaelwenger27@gmail.com", password: "password", dob: "28 Feb 1987", in_hospital: true, searchable_by_age: true, searchable_by_condition: true, is_caregiver: false, dependant_dob: "", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..80))
end
u.save

u = User.create(name: "Andrea cremese", email_address: "andrea@gmail.com", password: "password", dob: "28 Feb 1981", in_hospital: false, searchable_by_age: false, searchable_by_condition: true, is_caregiver: false, dependant_dob: "", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..80))
end
u.save

puts "Finished adding users"

Hangout.create!([
  {datetime: "2014-03-16 23:29:01", title: "Prenatal Care", max_participants: 20, recordable: true, hangout_url: "https://plus.google.com/hangouts/_/72cpi203rt54mb01ihiqkg5lrs?hl=en", description: "Sally Suthers will be providing an overview of nutrition and health during the third trimester.", user_id: 1},
  {datetime: "2014-03-17 23:29:01", title: "Kids Group Drawing", max_participants: 20, recordable: true, hangout_url: "https://plus.google.com/hangouts/_/72cpi203rt54mb01ihiqkg5lrs?hl=en", description: "Group hangout to draw collaboratively with others.", user_id: 2},
  {datetime: "2014-03-17 15:00:00", title: "Talk to the Cafeteria Executive Chef", max_participants: nil, recordable: true, hangout_url: "https://plus.google.com/hangouts/_/72cpi203rt54mb01ihiqkg5lrs?hl=en", description: "Chef Jean Stevenson will be talking about changes to the menu this month.", user_id: 2},
  {datetime: "2014-03-16 01:16:00", title: "Keeping up with School Work while Staying at the Hospital", max_participants: nil, recordable: false, hangout_url: "https://plus.google.com/hangouts/_/72cpi203rt54mb01ihiqkg5lrs?hl=en", description: "Sarah Jan will be talking about how you can take advantage of e-learning to stay on top of your studies during your stay.", user_id: nil}
])
HangoutHealthTag.create!([
  {health_tag_id: 8, hangout_id: 1}
])
HangoutTag.create!([
  {tag_id: 19, hangout_id: 2}
])
HealthTag.create!([
  {name: "Broken Back"},
  {name: "Pediatric asthma"},
  {name: "Febrile neutropenia"},
  {name: "Cystic Fibrosis"},
  {name: "Chemotherapy induction"},
  {name: "Pneumonia"},
  {name: "Cellulitis"},
  {name: "Prenatal Care"},
  {name: "Spinal fracture"},
  {name: "CABG"},
  {name: "CHF"},
  {name: "Intensive post-CVA Rehab"},
  {name: "Influenza in the elderly"},
  {name: "Confusion"}
])
Tag.create!([
  {name: "A vintage scrapbook"},
  {name: "Animal fancying"},
  {name: "Amateur radio[1]"},
  {name: "Audiophilia"},
  {name: "Baton twirling"},
  {name: "Bboying"},
  {name: "Blogging"},
  {name: "Chainmail making"},
  {name: "Coloring"},
  {name: "Computer programming"},
  {name: "Conlanging"},
  {name: "Cooking"},
  {name: "Cosplaying"},
  {name: "Creative writing"},
  {name: "Crocheting"},
  {name: "Dance"},
  {name: "Digital arts"},
  {name: "Drama"},
  {name: "Drawing"},
  {name: "Drinking Coffee"},
  {name: "Eating"},
  {name: "Embroidery"},
  {name: "Fantasy Sports"},
  {name: "Fishkeeping"},
  {name: "Foreign language learning"},
  {name: "Gaming (tabletop games and role-playing games)"},
  {name: "Genealogy"},
  {name: "Genetic genealogy"},
  {name: "Herpetoculture"},
  {name: "Home Movies"},
  {name: "Homebrewing"},
  {name: "Jewelry making"},
  {name: "Juggling"},
  {name: "Knapping"},
  {name: "Knitting"},
  {name: "K-pop"},
  {name: "Lacemaking"},
  {name: "Lapidary"},
  {name: "Leather crafting"},
  {name: "Lego Building"},
  {name: "Locksport"},
  {name: "Magic"},
  {name: "Modeling"},
  {name: "Model Building"},
  {name: "Model Railroading"},
  {name: "Origami"},
  {name: "Painting"},
  {name: "Ping Pong"},
  {name: "Playing Musical Instrument"},
  {name: "Pottery"},
  {name: "Quilting"},
  {name: "RC cars"},
  {name: "Reading"},
  {name: "Scrapbooking"},
  {name: "Sculpting"},
  {name: "Sewing"},
  {name: "Singing"},
  {name: "Soapmaking"},
  {name: "Speedsolving"},
  {name: "Taxidermy"},
  {name: "Video Gaming"},
  {name: "Web surfing"},
  {name: "Wood carving"},
  {name: "Woodworking"},
  {name: "Worldbuilding"},
  {name: "Writing"},
  {name: "Yoga"},
  {name: "Yo-yoing"}
])
User.create!([
  {name: "Mike Wenger", email_address: "michaelwenger27@gmail.com", password: "password", dob: "1987-02-28", in_hospital: true, searchable_by_age: true, searchable_by_condition: true, is_caregiver: false, dependant_dob: nil},
  {name: "Andrea cremese", email_address: "andrea@gmail.com", password: "password", dob: "1981-02-28", in_hospital: false, searchable_by_age: false, searchable_by_condition: true, is_caregiver: false, dependant_dob: nil}
])
UserTag.create!([
  {user_id: 1, tag_id: 57},
  {user_id: 2, tag_id: 44},
  {user_id: 2, tag_id: 21}
])
