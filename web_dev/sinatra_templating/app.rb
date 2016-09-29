# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

car_database = SQLite3::Database.new("cars.db")
car_database.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS cars(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

car_database.execute(create_table_cmd)

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/list_cars' do 
	@cars=car_database.execute("select * from cars")
  	erb :list_cars
end

get '/cars/new' do
	erb :cars
end

post '/add_cars' do
  car_database.execute("insert into cars (name) values(?)",[params['cars']])
  redirect '/list_cars'
end


# add static resources
