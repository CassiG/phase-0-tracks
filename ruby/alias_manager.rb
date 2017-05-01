###
# 5.5 Solo Challange | Ruby Detective
# Cassi Gallagher
###

	#Greet User
	puts "Hello Detective! Welcome to the mission." 

	#Release 2 - Loop through the following choices
	#Step 1: Ask if a detective wants to enter a name.
	answer = '' 

	until answer == "quit" do
		print "Would you like to create a new fake name? (Type 'yes' to proceed and 'quit' when you're done) "
		answer = gets.chomp.downcase

		if answer == "yes"
			#Create a hash to store answers
			new_name_hash = {
				real_name: "",
				fake_name: ""
			}

			#Step 2: If yes, get detective's name
			puts 'We need to create a fake name for you, please provide your current name to proceed'

			print 'First Name: '
				first_name = gets.chomp.downcase #add downcase to make characters easier to work with
			print 'Last Name: '
				last_name = gets.chomp.downcase 

			full_name = first_name + ' ' + last_name

			#Push full name into real name hash
			new_name_hash[:real_name] = full_name

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

			## Hide all the code that's making me crazy and use option b, just changes the letters somehow
			mix_name = next_letter.shuffle.join('')

			#Capitalize and Join the letters back together
			capitalize_name = mix_name.split.map {|char| char.capitalize}

			#Step 4: Print new fake name 
			new_name = capitalize_name.join(' ')
			puts "Your new name is now #{new_name}. You may proceed with your mission, and good luck"
		
		end

		if answer == "quit"
			puts "Good Luck on your mission"
			break
		end
	end

	print new_name_hash
	
	