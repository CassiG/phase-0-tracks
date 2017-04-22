# Program to detect if a new employee is a Vampire

# Check how many employees will be processed
puts "How many employees will you be checking"
employees = gets.chomp.to_i

i = 0

# Logic Block

# While i (which is 0) is less than the number of employees
while i < employees do

	#Begin Questionaire 
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

	#Check specifically for sunshine allergy
		loop_counter = 0
		allergy = false

		loop do
			puts "Do you have any allergies? List them here, one at a time then type done when complete"
				response = gets.chomp.downcase
				
				if response == "sunshine"

					#You can end your check here because they are: 
					allergy = true
					puts "Probably a vampire\n"
					break

				elsif response == "done"
					break		
				end
			loop_counter += 1
		end

	#Additional variables for checking
		current_year = Time.new.year
		calculated_birthday = current_year - age

	#Continue on to check to see if employee is a vampire
		#Check first, if they have an obvious vampire name, so we can rule them out IMMEDIATLY
		if allergy == false && (vampire_name == "drake cula" || vampire_name == "tu fang")
			result = "They are definitely a vampire\n"

			#Check if their birth year age or they're over 100, hates garlic and waives insurance
			elsif allergy == false && ((calculated_birthday != year || age > 100) && garlic == "no" && health == "no")
				result =  "Almost certainly a vampire\n" 

			#Check if birth year matches age or they're over a hundred, and either hates garlic or waives insurance
			elsif allergy == false && ((calculated_birthday != year || age > 100) && (garlic == "no" || health == "no"))
				result =  "Probably a vampire\n"

			#Check if birth year matchs age and they're less than a hundred, and either want garlic or insurance 
			elsif allergy == false && ((calculated_birthday == year && age <= 100) && (garlic == "yes" || health == "yes"))
				result =  "Probably not a vampire\n"

			elsif allergy == false 
				result =  "Results inconclusive\n"
		end
	puts result
	i += 1
end

# End with the plot twist becuase we don't really care after all
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
