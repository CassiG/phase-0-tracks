puts "What is your name?"
username = gets.chomp

puts "How loud do you squeak on a scale of 1-10"
volume = gets.chomp

puts "What color is your fur"
fur = gets.chomp

puts "Are you looking for a good home? (y/n)"
adoption = gets.chomp

until input 
	puts "How old are you?"
	input = gets.chomp
	
	if input == input.is_an_int
		age = true
	elsif input ==  nil
		puts "Are you sure?"
	else 
		puts "How old are you?"
end

