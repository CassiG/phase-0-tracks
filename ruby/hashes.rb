#Create empty hash

interior_info = {}

#Ask designer for user information & put information into a hash

puts "What is the client's name?"
	interior_info[:name] = gets.chomp
puts "How old are they?"
	interior_info[:age] = gets.chomp.to_i
puts "How many kids do they have?"
	interior_info[:kids] = gets.chomp.to_i
puts "What is their style preference?"
	interior_info[:style] = gets.chomp
puts "What is their favorite color of blue?"
	interior_info[:color] = gets.chomp
puts "Are they interested in a tiny home? (y/n)"
	interior_info[:tiny] = gets.chomp

#Print hash back out onto screen 
p interior_info

#Print Human Readable List
puts "Here is your info"
puts "Name = #{interior_info[:name]}"
puts "Age = #{interior_info[:age]}"
puts "Kids = #{interior_info[:kids]}"
puts "Style Preference = #{interior_info[:style]}"
puts "Favorite Blue = #{interior_info[:color]}"
puts "Tiny House? = #{interior_info[:tiny]}"

#Ask user if what value they would like to update, 'none' if none

puts "Do you need to edit an answer? If yes, type the name of the section. If no, type 'none'"
	input = gets.chomp.downcase

#Check which answer they'd like to change
	if input == "name"
		print "What would you like to update it to?"
		new_name = gets.chomp
		interior_info[:name] = new_name
	end

p interior_info
