# Program to detect if a new employee is a Vampire

# Question Block

puts "How many employees will you be checking"
employees = gets.chomp.to_i

puts "What is your name?" 
vampire_name = gets.chomp.downcase

puts "How old are you?" 
age = gets.chomp.to_i

puts "What year were you born?" 
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)" 
garlic = gets.chomp.downcase

puts "Would you like to enroll in the company’s health insurance? (yes/no)" 
health = gets.chomp

#Additional Variables for logic block

current_year = Time.new.year
calculated_birthday = current_year - age
i = 0

# Logic Block

while i <= employees
	#Check if they have an obvious vampire name
	if vampire_name == "drake cula" || vampire_name == "tu fang"
		result = "They are definitely a vampire"

		#Check if their birth year age or they're over 100, hates garlic and waives insurance
		elsif (calculated_birthday != year || age > 100) && garlic == "no" && health == "no"
			result =  "Almost certainly a vampire" 

		#Check if birth year matches age or they're over a hundred, and either hates garlic or waives insurance
		elsif (calculated_birthday != year || age > 100) && (garlic == "no" || health == "no")
			result =  "Probably a vampire"

		#Check if birth year matchs age and they're less than a hundred, and either want garlic or insurance 
		elsif (calculated_birthday == year && age <= 100) && (garlic == "yes" || health == "yes")
			result =  "Probably not a vampire"

		else result =  "Results inconclusive"
	end
end

puts result