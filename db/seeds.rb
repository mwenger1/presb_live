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

puts "Finished with tags"

puts "Adding users"

u = User.create(name: "Mike Wenger", email_address: "michaelwenger27@gmail.com", password: "password", dob: "28 Feb 1987", in_hospital: true, searchable_by_age: true, searchable_by_condition: true, is_caregiver: false, dependant_dob: "", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..60))
end
u.save

u = User.create(name: "Andrea cremese", email_address: "michaelwenger27@gmail.com", password: "password", dob: "28 Feb 1987", in_hospital: true, searchable_by_age: true, searchable_by_condition: true, is_caregiver: false, dependant_dob: "", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..60))
end
u.save

puts "Finished adding users"

