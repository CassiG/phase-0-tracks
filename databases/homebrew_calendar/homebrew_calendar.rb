# Homebrew Calendar
# A simple calendar for homebrewers to know when to brew and when to keg their beer depending on the style of beer

# Database: 
# beer_type, name, brew month, keg month

# Program: 
# Create a database to store beer information
# First create a program to ask user if they'd like to enter a beer, delete a beer, or see the current beer calendar 
	# If they'd like to enter a beer
		# Ask what kind of beer they'd like to make (Give 4 to choose from)
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

# Database Queries
def enter_beer(homebrew_db, beer_type, name, brew_month, keg_month)
	homebrew_db.execute("INSERT INTO homebrew (beer_type, name, brew_month, keg_month) VALUES (?, ?, ?, ?)", [beer_type, name, brew_month, keg_month] )
end

def delete_beer(homebrew_db, name)
	homebrew_db.execute("DELETE FROM homebrew WHERE name=?", [name])
end

# User Interface

puts "-" * 60
puts "Welcome to HmBrw, the calendar for Homebrew Enthusiasts"
puts "-" * 60
puts "\n\n"

answer = ''	

while answer != 'exit' do
	puts "Type 'enter' to enter a new beer, 'delete' to delete a beer, or 'view' to view the current beer calendar. Type 'exit' to exit program."
	answer = gets.chomp.downcase

	if answer == 'enter'
		puts "Please enter the style of beer you'd like to brew (IPA, Red Ale, Pale Ale or Stout"
		beer_type = gets.chomp.downcase

		puts "What are you going to call your beer?"
		name = gets.chomp.downcase

		if beer_type == "ipa"
			brew_month = "March"
			keg_month = "May"
		elsif beer_type == "red ale"
			brew_month = "February"
			keg_month = "March"
		elsif beer_type == "pale ale"
			brew_month = "March"
			keg_month = "April"
		elsif beer_type == "stout"
			brew_month = "October"
			keg_month = "December"
		end

		if beer_type == "ipa" || beer_type == "red ale" || beer_type == "pale ale" || beer_type == "stout"
			
			enter_beer(homebrew_db, beer_type, name, brew_month, keg_month)

			list_beers = homebrew_db.execute("SELECT * FROM homebrew")
			
			puts "You're brewing an #{beer_type}. You should start brewing in #{brew_month}. Your beer will be kegged and ready to drink in #{keg_month}"

		else puts "HmBrw currently only supports 4 beer styles. Check back later for more"
		end
		
	elsif answer == 'delete'
		list_beers = homebrew_db.execute("SELECT * FROM homebrew")

		list_beers.each do |beers|
			puts "Style: #{beers['beer_type']} | Name: #{beers['name']} | Brew Month: #{beers['brew_month']} | Keg Month: #{beers['keg_month']}"
		end

		puts "Enter the name of the beer you'd like to delete"
		name = gets.chomp.downcase

		delete_beer(homebrew_db, name)

		new_list_beers = homebrew_db.execute("SELECT * FROM homebrew")

		new_list_beers.each do |beers|
			puts "Style: #{beers['beer_type']} | Name: #{beers['name']} | Brew Month: #{beers['brew_month']} | Keg Month: #{beers['keg_month']}"
		end
	elsif answer == 'view'
		list_beers = homebrew_db.execute("SELECT * FROM homebrew")

		list_beers.each do |beers|
			puts "Style: #{beers['beer_type']} | Name: #{beers['name']} | Brew Month: #{beers['brew_month']} | Keg Month: #{beers['keg_month']}"
		end
	elsif answer !='exit' && answer != 'enter' && answer != 'delete' && answer != 'view'
		puts "Please enter one of the four choices\n\n"
	end

	break if answer == 'exit'
end	
