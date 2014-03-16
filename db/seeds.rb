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
Tag.create(name: 'Chemotherapy')
Tag.create(name: 'Pneumonia')
Tag.create(name: 'Cellulitis')
Tag.create(name: 'Prenatal Care')
Tag.create(name: 'Spinal fracture')
Tag.create(name: 'CABG')
Tag.create(name: 'CHF')
Tag.create(name: 'Intensive post-CVA Rehab')
Tag.create(name: 'Influenza in the elderly')
Tag.create(name: 'Cricket')
Tag.create(name: 'Soccer')
Tag.create(name: 'Football')
Tag.create(name: 'Caregiving')
Tag.create(name: 'Kids')
Tag.create(name: 'Homework')
puts "ending healthtags"


puts "Adding users"

u = User.create(name: "Tommy Zigler", email_address: "tommy@gmail.com", password: "password", dob: "28 Feb 1987", in_hospital: true, searchable_by_age: true, searchable_by_condition: true, is_caregiver: false, dependant_dob: "", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")

u.save
u1 = u

u = User.create(name: "Andrea Cremese", email_address: "andrea@gmail.com", password: "password", dob: "28 Feb 1981", in_hospital: false, searchable_by_age: false, searchable_by_condition: true, is_caregiver: false, dependant_dob: "", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..80))
end
u.save
u2 = u

u = User.create(name: "Linda Torres", email_address: "torres@gmail.com", password: "password", dob: "28 Feb 1981", in_hospital: false, searchable_by_age: false, searchable_by_condition: false, is_caregiver: true, dependant_dob: "28 Feb 2010", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..80))
end
u.save
u3 = u

u = User.create(name: "Cheril Cranes", email_address: "cheriyl@gmail.com", password: "password", dob: "28 Feb 1981", in_hospital: false, searchable_by_age: false, searchable_by_condition: true, is_caregiver: true, dependant_dob: "25 March 2009", created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..80))
end
u.save
u4 = u

u = User.create(name: "Andy Smalls", email_address: "smalls@gmail.com", password: "password", dob: "01 Dec 2009", in_hospital: true, searchable_by_age: false, searchable_by_condition: true, is_caregiver: false, created_at: "2014-03-15 19:29:01 -0400", updated_at: "2014-03-15 19:29:01 -0400")
rand(1..5).times do |g|
    u.tags << Tag.where(id: rand(1..80))
end
u.save
u5 = u



puts "Finished adding users"


puts "Starting hangouts"
time_now = '2014-03-16 01:29:01 -0400'
time_future = '2014-03-16 18:30:00 -0400'

h = Hangout.create(datetime: time_now,
  title: 'Prenatal Care',
  max_participants: '20', recordable: true,
  description: 'Sally Suthers will be providing an overview of nutrition and health during the third trimester.',
  user_id: u2.id)
h.tags << Tag.where(name: "Prenatal Care")
h.save

h = Hangout.create(datetime: time_future,
  title:'Any soccer or cricket lover around?',
  description: 'Am British and woudl like to chat about soccer while I am here.',
  max_participants: '20', recordable: true,
  user_id: u3.id)
h.tags << Tag.where(name: "Soccer")
h.tags << Tag.where(name: "Football")
h.save


h = Hangout.create(datetime: time_future,
  title:'Any mum with her kid in chemoterapy wants to connect?',
  description: 'MY kid started chemoterapy here last week. Any other mum wants to connect. Could use some help from someone that has been through this..',
  max_participants: '1', recordable: false,
  user_id: u2.id)
h.tags << Tag.where(name: "Caregiving")
h.save

h = Hangout.create(datetime: time_future,
  title:'Am in rehab, anyone wants to play chess?',
  description: 'Will be here for some time, do you want to play chess',
  max_participants: '1', recordable: true,
  user_id: u3.id)
h.tags << Tag.where(name: 'Gaming (tabletop games and role-playing games)')
h.save

h = Hangout.create(datetime: time_future,
  title:'Just had a baby at Presbyterian midtown!!',
  description: 'Any other neo mum in the neighbourhood? want to connect?',
  max_participants: '1', recordable: true,
  user_id: u4.id)
h.tags << Tag.where(name: "Motherhood")
h.save

h = Hangout.create(datetime: time_future,
  title:'Just been admitted, v loud neigbour',
  description: 'have a loud neighborhood that is bothering me? what to do?',
  max_participants: '1', recordable: true,
  user_id: u2.id)
h.tags << Tag.where(name: "Motherhood")
h.save

h = Hangout.create(datetime: time_future,
  title:'Any math teacher',
  description: 'I have to be at hospital, i like school but cannot go. anyone willing to help me out with math?',
  max_participants: '1', recordable: true,
  user_id: u5.id)
h.tags << Tag.where(name: "Kids")
h.save

h = Hangout.create(datetime: time_future,
  title:'wanna kill some time with me by doing origami?',
  description: 'can you make cool origami? Fancy learning/teaching origami?',
  max_participants: '1', recordable: true,
  user_id: u2.id)
h.tags << Tag.where(name: "Origami")
h.save

h = Hangout.create(datetime: time_future,
  title:'My grandda has flu',
  description: 'Am at Presbyterian visiting my grandad with flu here. Woudl like to discuss what omre there is around.',
  max_participants: '1', recordable: true,
  user_id: u5.id)
h.tags << Tag.where(name: "Influenza in the elderly")
h.tags << Tag.where(name: "Caregiving")
h.save

h = Hangout.create(datetime: time_future,
  title:'my kid has asthma',
  description: 'my kid has asthma, any other mum wants to discuss',
  max_participants: '1', recordable: false,
  user_id: u4.id)
h.tags << Tag.where(name: "Pediatric asthma")
h.save

# these are relevat to the presentation case, happning now



h = Hangout.create(datetime: time_now,
  title:'Drawing sunsets',
  description: 'I am keen in drawing oil. Before been admitted I was working on a painting of the sunset on the hudson. Fancy having a chat about that?',
  max_participants: '9', recordable: false,
  user_id: u2.id)
h.tags << Tag.where(name: "Drawing")
h.save

h = Hangout.create(datetime: time_now,
  title:'Arsenal back on the right track" Trashed THE SPURS one - nil. Back in the title game!!',
  description: 'I was very worried about the latest on Arsenal. After loosing at Man U it seemed the season was gone. We then went off Champions tooo =(. We are talking about the Gunners victory on Spurs. If you are a spurs fan join us, we are just really talking soccer!!',
  max_participants: '9', recordable: false,
  user_id: u4.id)
h.tags << Tag.where(name: "Soccer")
h.save

h = Hangout.create(datetime: time_now,
  title:'Locked in hospital =(',
  description: 'I am locked in the hospital for the treatment. Not sure what I have, but my mum seems worried. Any one has time for play? Wanna watch together the last Sponge Bob',
  max_participants: '6', recordable: false,
  user_id: u3.id)
h.tags << Tag.where(name: "Cystic Fibrosis")
h.save

# these are relevat to the presentation case, happning in future


h = Hangout.create(datetime: time_future,
  title:'Drawing sunsets',
  description: 'I am keen in drawing oil. Before been admitted I was working on a painting of the sunset on the hudson. Fancy having a chat about that?',
  max_participants: '9', recordable: false,
  user_id: u4.id)
h.tags << Tag.where(name: "Drawing")
h.save

h = Hangout.create(datetime: time_future,
  title:'Homework',
  description: 'Am here at Presbyterian for treatment quite often. Doing homeworks is more fun if you know you have some time to play / talk with someone afterwards',
  max_participants: '9', recordable: false,
  user_id: u4.id)
h.tags << Tag.where(name: "Homework")
h.save


h = Hangout.create(datetime: time_future,
  title:'Drawing',
  description: 'Is there a place in the hospital where  can draw',
  max_participants: '6', recordable: false,
  user_id: u3.id)
h.tags << Tag.where(name: "Drawing")
h.save

puts "ending hangouts"
