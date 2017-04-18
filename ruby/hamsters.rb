def hamster_name
	puts "What is your name?"
	username = gets.chomp
end

puts "Nice to meet you #{hamster_name}"

def squeak_vol
	puts "How loud do you squeak on a scale of 1-10"
	volume = gets.chomp.to_i
end

puts "You squeak this loud: #{squeak_vol}"

def fur
	puts "What color is your fur"
	fur = gets.chomp
end 

puts "Your color is #{fur}"

def home
	puts "Are you looking for a good home? (y/n)"
	adoption = gets.chomp

		if adoption == "y" 
			puts "We have the perfect home for you"
		elsif adoption == "n"
			puts "Maybe next time."
		else 
			puts "Please choose y or n"
		end
end

home

def age  
	puts "How old are you?"
	input = gets.chomp.to_i
	
		if input == input.to_i
			puts "That's a great age"
			input = true
		elsif input ==  nil
			puts "Are you sure?"
		else 
			puts "How old are you?"
		end
end

age