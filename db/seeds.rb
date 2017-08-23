require_relative('../models/students')
student1 = Student.new({
  'first_name' => 'Ron',
  'second_name' => 'Weasley',
  'house' => 'Gryffindor',
  'age' => 17 })

student2 = Student.new({
  'first_name' => 'Draco',
  'second_name' => 'Malfoy',
  'house' => 'Slytherrin',
  'age' => 17 })

student3 = Student.new({
  'first_name' => 'Hermione',
  'second_name' => 'Granger',
  'house' => 'Gryffindor',
  'age' => 18 })

student1.save
student2.save
student3.save
