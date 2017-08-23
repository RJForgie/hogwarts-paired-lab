require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/students.rb')
require_relative('./models/house.rb')


get '/' do
  erb(:home)
end

#INDEX route

get '/students' do
  @students = Student.all()
  erb(:index)
end

#NEW route

get '/students/new' do
  @houses = House.all()
  erb(:new)
end

# SHOW route
get '/students/:id' do
  @student = Student.find( params[:id] )
  @houses = House.all()
  erb(:show)
end

#CREATE route
post '/students' do
  @student = Student.new(params)
  @student.save
  erb(:create)
end

# DELETE route
post '/students/:id/delete' do
  @student = Student.find(params[:id])
  @student.delete
  redirect to '/students'
end

# EDIT route
get '/students/:id/edit' do
  @houses = House.all()
  @student = Student.find( params[:id] )
  erb(:edit)
end

# UPDATE route
post '/students/:id' do
  student = Student.new(params)
  student.update()
  redirect to "/students/#{params['id']}"
end
