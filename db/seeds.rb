# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ua = Chapter.create!(school: "University of Alabama")

#Guys
dgroup1 = Dgroup.create!(time: '7:00pm'.to_time, day: 3, chapter: ua, location: 0, gender: 0)

male_staff = Staff.create!(firstname: "MaleStaff", lastname: "Test", phone: "1234567890", email: "staff@mail.com", gender: 0, status: 0, chapter: ua)

male_leader1 = Leader.create!(firstname: "MaleLeader1", lastname: "Test", phone: "1234567891", email: "leader1@mail.com", gender: 0, status: 0, chapter: ua)
Connection.create!(user: male_leader1, dgroup: dgroup1)
male_leader2 = Leader.create!(firstname: "MaleLeader2", lastname: "Test", phone: "1234567892", email: "leader2@mail.com", gender: 0, status: 0, chapter: ua)
Connection.create!(user: male_leader2, dgroup: dgroup1)

male_member1 = Member.create!(firstname: "MaleMember1", lastname: "Test", phone: "1234567893", email: "member1@mail.com", gender: 0, status: 0, chapter: ua)
Connection.create!(user: male_member1, dgroup: dgroup1)
male_member2 = Member.create!(firstname: "MaleMember2", lastname: "Test", phone: "1234567894", email: "member2@mail.com", gender: 0, status: 0, chapter: ua)
Connection.create!(user: male_member2, dgroup: dgroup1)
male_member3 = Member.create!(firstname: "MaleMember3", lastname: "Test", phone: "1234567895", email: "member3@mail.com", gender: 0, status: 0, chapter: ua)
Connection.create!(user: male_member3, dgroup: dgroup1)

#Girls
dgroup2 = Dgroup.create!(time: '5:30pm'.to_time, day: 2, chapter: ua, location: 1, gender: 1)

female_staff = Staff.create!(firstname: "FemaleStaff", lastname: "Test", phone: "1234567896", email: "staff2@mail.com", gender: 1, status: 0, chapter: ua)

leader1 = Leader.create!(firstname: "FemaleLeader1", lastname: "Test", phone: "1234567897", email: "leader3@mail.com", gender: 1, status: 0, chapter: ua)
Connection.create!(user: leader1, dgroup: dgroup2)
leader2 = Leader.create!(firstname: "FemaleLeader2", lastname: "Test", phone: "1234567898", email: "leader4@mail.com", gender: 1, status: 0, chapter: ua)
Connection.create!(user: leader2, dgroup: dgroup2)

member1 = Member.create!(firstname: "FemaleMember1", lastname: "Test", phone: "1234567899", email: "member4@mail.com", gender: 1, status: 0, chapter: ua)
Connection.create!(user: member1, dgroup: dgroup2)
member2 = Member.create!(firstname: "FemaleMember2", lastname: "Test", phone: "1234567800", email: "member5@mail.com", gender: 1, status: 0, chapter: ua)
Connection.create!(user: member2, dgroup: dgroup2)
member3 = Member.create!(firstname: "FemaleMember3", lastname: "Test", phone: "1234567810", email: "member6@mail.com", gender: 1, status: 0, chapter: ua)
Connection.create!(user: member3, dgroup: dgroup2)




