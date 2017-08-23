require_relative('../models/students')
require_relative('../models/house')

house1 = House.new({
  'name' => 'Gryffindor',
  'url'  => 'URL'
  })
house2 = House.new({
  'name' => 'Slytherrin',
  'url'  => 'URL'
  })
house3 = House.new({
  'name' => 'Ravenclaw',
  'url'  => 'URL'
  })
house4 = House.new({
  'name' => 'Hufflepuff',
  'url'  => 'URL'
  })

  house1.save
  house2.save
  house3.save
  house4.save


student1 = Student.new({
  'first_name' => 'Ron',
  'second_name' => 'Weasley',
  'age' => 17,
  'house_id' => house1.id
})

student2 = Student.new({
  'first_name' => 'Draco',
  'second_name' => 'Malfoy',
  'age' => 17,
  'house_id' => house2.id

})
student3 = Student.new({
  'first_name' => 'Hermione',
  'second_name' => 'Granger',
  'age' => 18,
  'house_id' => house3.id
})

student1.save
student2.save
student3.save
