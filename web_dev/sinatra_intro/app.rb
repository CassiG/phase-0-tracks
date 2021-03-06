# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# DO THE THING 
# write a GET route that displays an address

get '/contact' do
  "<p>0001 Moon of Earth<br>
   Milky Way Galaxy, Known Universe 1</p>"
end

# write a GET parameter that takes a name as a query parameter vs a route parameter
get '/great-job' do
  name = params[:name]
  if name 
    "Great job #{name}!"
  else 
    "Great Job"
  end
end

# write a GET parameter A route that uses route parameters to add two numbers and respond with the result

get '/:num1/plus/:num2' do 
  result = params[:num1].to_i + params[:num2].to_i
  "#{result}"
end

