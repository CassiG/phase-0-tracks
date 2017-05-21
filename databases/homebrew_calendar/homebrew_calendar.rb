# Homebrew Calendar
# A simple calendar for homebrewers to know when to brew and when to keg their beer depending on the style of beer

# Database: 
# beer_type, name, brew month, keg month

# Program: 
# Create a database to store beer information
# Ask the user if they'd like to enter a beer, delete a beer, or see the current beer calendar 
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
		CREATE TABLE homebrew (
			id INTEGER PRIMARY KEY,
			beer_type VARCHAR(255),
			name VARCHAR(255), 
			brew_month VARCHAR(255),
			keg_month VARCHAR(255),
			is_ready BOOLEAN
		)
	Homebrew_db

homebrew_db.execute(create_table_cmd)