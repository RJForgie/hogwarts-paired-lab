require('pg')
require_relative('../db/sqlrunner.rb')
# require_relative('/house.rb')


class Student
attr_accessor(:first_name, :second_name, :age)
attr_reader(:id, :house_id)
def initialize ( student )
  @id = student['id'].to_i()
  @first_name = student['first_name']
  @second_name = student['second_name']
  @age = student['age'].to_i()
  @house_id = student['house_id'].to_i
end


def save()
sql = 'INSERT INTO students
(first_name, second_name, age, house_id)
VALUES ($1, $2, $3, $4)
RETURNING *;'
values = [@first_name, @second_name, @age, @house_id]
student_data = SqlRunner.run(sql, values)
@id = student_data.first['id'].to_i()
end

def self.all()
sql = 'SELECT * FROM students;'
values = []
students = SqlRunner.run(sql, values)
result = students.map { |student| Student.new(student)}
return result
end

def self.find(id)
  sql = 'SELECT * FROM students WHERE id = $1'
  values = [id]
  student = SqlRunner.run(sql, values)
  result = Student.new(student.first)
  return result
end

def which_house()
  sql = 'SELECT * FROM houses
  WHERE id = $1'
  values = [@house_id]
  house = SqlRunner.run(sql, values)
  result = House.new(house.first)
  return result
end

end
