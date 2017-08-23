DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house VARCHAR(255),
  age INT
);

-- INSERT INTO students (first_name, second_name, house, age) VALUES ('Harry', 'Potter', 'Gryffindor', 18);

SELECT * FROM students;
