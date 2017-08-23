require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/students.rb')

#this is the index route

get '/students' do
  @students = Student.all()
  erb(:index)
end

#new student route

get '/students/new' do
  erb(:new)
end

#create route
post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end
