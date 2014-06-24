require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# THIS IS CODE FOR DOING THE SEED RAILS 4 REAL
if School.all.length == 0 
file = "#{Rails.root}/db/CALGIS.SCHOOL_LOCATION.csv"
CSV.foreach(file, :headers => true) do |row|
   #puts row[3]
   School.create( {
     board: row[0],
     category: row[1],   
     school_type: row[2],
     name: row[3],
     address: row[4],
     city: row[5],
     province: row[6],
     postal_code: row[7],
     grade_range: row[8],
     has_ecs:  row[9] == 'Y'
   })
end    
end
schools=School.all
# Create a collection of names for the database
if Student.all.length == 0
first=[]
file = "#{Rails.root}/db/first.csv"
CSV.foreach(file, :headers => false) do |row|
  #puts "fname #{row[0]}"
  first << row[0]
end
last=[]
file = "#{Rails.root}/db/last.csv"
CSV.foreach(file, :headers => true) do |row|
  #puts "lname #{row[0]}"
  last << row[0]
end

i=0
schools.each do | school | 
  if rand(6) < 3
    num_students=rand(5)*20
    j=0
    while j < num_students
      fname=first[rand(first.length-1)]
      lname=last[rand(last.length-1)]
      age = 5+rand(13)
      s_id= school.id
      puts "#{i}, #{fname} #{lname}, #{age}, #{school.name } #{s_id}"
      Student.create({
        name:  "#{fname} #{lname}",
        age: age ,
        school_id:  s_id })

      j=j+1
      i=i+1
    end
  end

 end 
end
 # create a collection of field trips
 num_field_trips=150
 i=1
 
 while i < num_field_trips
    school=schools[rand(schools.length-1)]
    trip = FieldTrip.create( name:  "Trip #{i}", school_id: school.id  )
    school.students.each do |student|
      Registration.create( student_id: student.id, field_trip_id: trip.id ) if rand(2) > 0
    end
    i=i+1
 end






