require('pg')
require_relative('../db/sqlrunner.rb')

class House

  attr_accessor(:name, :url)
  attr_reader(:id)

def initialize ( house )
  @id = house['id'].to_i()
  @name = house['name']
  @url = house['url']
end


def save()
  sql = 'INSERT INTO houses
  (name, url)
  VALUES ($1, $2)
  RETURNING *;'
  values = [@name, @url]
  house_data = SqlRunner.run(sql, values)
  @id = house_data.first['id'].to_i()
end


def self.all()
  sql = 'SELECT * FROM houses;'
  values = []
  houses = SqlRunner.run(sql, values)
  result = houses.map { |house| House.new(house)}
  return result
end

def self.find(id)
  sql = 'SELECT * FROM houses WHERE id = $1'
  values = [id]
  house = SqlRunner.run(sql, values)
  result = House.new(house.first)
  return result
end



end
