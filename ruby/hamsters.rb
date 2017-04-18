puts "What is your name?"

def hamster_name
	puts "Nice to meet you #{username}"
	username = gets.chomp
end

hamster_name

puts "How loud do you squeak on a scale of 1-10"
volume = gets.chomp.to_i

puts "What color is your fur"
fur = gets.chomp

puts "Are you looking for a good home? (y/n)"
adoption = gets.chomp

	if adoption == "y" 
	puts "We have the perfect home for you"
	elsif adoption == "n"
		puts "Maybe next time."
	else 
		puts "Please choose y or n"

input = false
until input 
	puts "How old are you?"
	input = gets.chomp.to_i
	
	if input == input.is_an_ints
		puts "That's a great age"
		input = true
	elsif input ==  nil
		puts "Are you sure?"
	else 
		puts "How old are you?"
end
