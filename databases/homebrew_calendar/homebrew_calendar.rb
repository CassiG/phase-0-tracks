# Homebrew Calendar
# A simple calendar for homebrewers to know when to brew and when to keg their beer depending on the style of beer

# Database: 
# beer_type, name, brew month, keg month

# Program: 
# Create a database to store beer information
# First create a program to ask user if they'd like to enter a beer, delete a beer, or see the current beer calendar 
	# If they'd like to enter a beer
		# Ask what kind of beer they'd like to make
		# Ask for the name
		# Display what month to start brewing depending on the month, and when to keg
		# Store data in a database table
	# If they'd like to delete a beer
		# Display calendar
		# Ask them which number they'd like to delete
		# Delete by ID
	# If they'd like to see the current beer calendar
		# Show Current Calendar
		# Underneath display the current month and any beers that need to be brewed or kegged

#Database Creation
require 'sqlite3'
homebrew_db = SQLite3::Database.new('homebrew.db')
homebrew_db.results_as_hash = true


create_table_cmd = 
	<<-Homebrew_db
		CREATE TABLE IF NOT EXISTS homebrew (
			id INTEGER PRIMARY KEY,
			beer_type VARCHAR(255),
			name VARCHAR(255), 
			brew_month VARCHAR(255),
			keg_month VARCHAR(255)
		)
	Homebrew_db

homebrew_db.execute(create_table_cmd)

# Program
def enter_beer(homebrew_db, beer_type, name, brew_month, keg_month)
	homebrew_db.execute("INSERT INTO homebrew (beer_type, name, brew_month, keg_month) VALUES (?, ?, ?, ?)", [beer_type, name, brew_month, keg_month] )
end

# Ask User to enter beer

answer = ''	

while answer != 'exit' do
	puts "Type 'enter' to enter a new beer, 'delete' to delete a beer, or 'view' to view the current beer calendar. Type 'exit' to exit program."
	answer = gets.chomp.downcase

	if answer == 'enter'
		puts "Please enter the style of beer you'd like to brew"
		beer_type = gets.chomp.downcase

		puts "What are you going to call your beer?"
		name = gets.chomp.downcase

		puts "What month would you like to brew"
		brew_month = gets.chomp.downcase

		puts "What month are you going to keg?"
		keg_month = gets.chomp.downcase
	
		enter_beer(homebrew_db, beer_type, name, brew_month, keg_month)
	elsif answer == 'delete'
		list_beers = homebrew_db.execute("SELECT * FROM homebrew")

		list_beers.each do |beers|
			puts "Style: #{beers['beer_type']} | Name: #{beers['name']} | Brew Month: #{beers['brew_month']} | Keg Month: #{beers['keg_month']}"
		end

	elsif answer == 'view'
		puts "Let's view a beer\n\n"
	elsif answer !='exit' && answer != 'enter' && answer != 'delete' && answer != 'view'
		puts "Please enter one of the four choices\n\n"
	end

	break if answer == 'exit'
end	
