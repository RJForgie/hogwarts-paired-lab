require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/students.rb')
require_relative('./models/house.rb')
# require_relative('db/seeds.rb')


#this is the index route

get '/students' do
  @students = Student.all()
  erb(:index)
end

# get '/houses' do
#   @houses = House.all()
#   erb(:index)
# end

#new student route

get '/students/new' do
  @houses = House.all()
  erb(:new)
end

#create route
post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end
