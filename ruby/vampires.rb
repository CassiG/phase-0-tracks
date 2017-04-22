# Program to detect if a new employee is a Vampire

# Question Block

puts "What is your name?" #If they have an obvious vampire name
name = gets.chomp

puts "How old are you?" #Vampires are probably several hundered years old 
age = gets.chomp.to_i

puts "What year were you born?" #If they mess up year and age
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)" #Vampires hate garlic bread
garlic = gets.chomp.downcase

puts "Would you like to enroll in the company’s health insurance? (yes/no)" #Vampires don't need insurance
health = gets.chomp

# Logic Block

#If employee is less than 100 years old and will garlic bread or sign up for insurance
	# They are: “Probably not a vampire.”

if age < 100 && (garlic = "yes" || health = "yes")
	probably_not_vampire = true

#If the employee got their age wrong, and hates garlic bread or waives insurance
	# They are: “Probably a vampire.”

#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance
	# They are: “Almost certainly a vampire.”

#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. 
	# They are: “Definitely a vampire.”

#Otherwise, print “Results inconclusive.”