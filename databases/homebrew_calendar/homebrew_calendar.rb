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

create_table_cmd = 
	<<-Homebrew_db
		CREATE TABLE IF NOT EXISTS homebrew (
			id INTEGER PRIMARY KEY,
			beer_type VARCHAR(255),
			name VARCHAR(255), 
			brew_month VARCHAR(255),
			keg_month VARCHAR(255),
			is_ready_brew BOOLEAN,
			is_ready_keg BOOLEAN
		)
	Homebrew_db

homebrew_db.execute(create_table_cmd)

#Test Beer
#homebrew_db.execute('INSERT INTO homebrew (beer_type, name, brew_month, keg_month, is_ready_brew, is_ready_keg) VALUES ("IPA", "Hometown IPA", "May", "July", "true", "false")')

# USER PROGRAM

def begin_program 
	answer = ''
	while answer != 'exit' do
		puts "Type 'enter' to enter a new beer, 'delete' to delete a beer, or 'view' to view the current beer calendar. Type 'exit' to exit program."
		answer = gets.chomp.downcase

		if answer == 'enter'
			puts "Let's enter a beer\n\n"
		elsif answer == 'delete'
			puts "Let's delete a beer\n\n"
		elsif answer == 'view'
			puts "Let's view a beer\n\n"
		elsif answer !='exit' && answer != 'enter' && answer != 'delete' && answer != 'view'
			puts "Please enter one of the four choices\n\n"
		end

		break if answer == 'exit'
	end	
end

# USER INTERFACE
begin_program