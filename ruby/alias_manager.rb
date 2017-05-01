###
# 5.5 Solo Challange | Ruby Detective
# Cassi Gallagher
###

#Greet User
puts "Hello Detective! Welcome to the mission." 

#Release 2 - Loop through the following choices
#Step 1: Ask if a detective wants to enter a name.
answer = '' 

#Create a hash to store answers
identity_storage = []

until answer == "quit" do
	print "Would you like to create a new fake name? (Type 'yes' to proceed and 'quit' when you're done) "
	answer = gets.chomp.downcase

	if answer == "yes"
		#Step 2: If yes, get detective's name
		puts 'We need to create a fake name for you, please provide your current name to proceed'

		print 'First Name: '
			first_name = gets.chomp.downcase #add downcase to make characters easier to work with
		print 'Last Name: '
			last_name = gets.chomp.downcase 

			full_name = first_name + ' ' + last_name	

		#Step 3: Create fake name
		#Split the name into an array of words & reverse them
		split_name = full_name.split(' ').reverse

		#Split the letters up into its own array
		next_letter = split_name.join(' ').split('') #use join to put the name back together before splitting characters

			#####

			#Advance next vowel	
				#next_vowel = next_letter.map do |char| #iterate through the string
					#vowel = ['a', 'e', 'i', 'o', 'u'] #define a vowel
					
					#if vowel.include?(char) #at each letter, check if it is a vowel
						#p char = vowel.rotate #if so, rotate it to the next vowel **This is where I am hung up - checking to see if it IS a vowel, but not knowing what the next step is from there
					#else 
						#p char #if not, move on to the next letter
					#end
				#end

			#Advance next consonants

			####

		## Hide all the code that's making me crazy and use option b given in release - to just changes the letters somehow
		mix_name = next_letter.shuffle.join('')

		#Capitalize and Join the letters back together
		capitalize_name = mix_name.split.map {|char| char.capitalize}

		#Step 4: Print new fake name 
		new_name = capitalize_name.join(' ')
		puts "Your new name is now #{new_name}. You may proceed with your mission, and good luck"
		
		#Go back and capitalize real name and store answers in array
		capitalize_real_name = full_name.split.map {|char| char.capitalize}
		real_name = capitalize_real_name.join(' ')
		identity_storage << [real_name, new_name]
	end


	if answer == "quit"
		puts "Good Luck on your mission"
		break
	end
end

#Print out all the real names and alias that were entered
puts "For your records here are all the agents in the feild: "
identity_storage.each do |real, fake|
	puts "#{real} will be operating under the alias #{fake}"
end
	
	