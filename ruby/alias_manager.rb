###
# 5.5 Solo Challange | Ruby Detective
# Cassi Gallagher
###

#Step 1: Get detective's name
	puts 'Hello Detective! Welcome to the mission. We need to create a fake name for you, please provide your current name to proceed'

	print 'First Name: '
		first_name = gets.chomp.downcase #add downcase to make characters easier to work with
	print 'Last Name: '
		last_name = gets.chomp.downcase 

	full_name = first_name + ' ' + last_name

#Step 2: Create fake name
#Split the name into an array of words & reverse them
	split_name = full_name.split(' ').reverse

#Split the letters up into its own array
	next_letter = split_name.join(' ').split('') #use join to put the name back together before splitting characters

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

## Hide all the code that's making me crazy and use option b, just changes the letters somehow
	mix_name = next_letter.shuffle.join('')

#Capitalize and Join the letters back together
	capitalize_name = mix_name.split.map {|char| char.capitalize}

#Step 3: Print new fake name 
	new_name = capitalize_name.join(' ')
	print "Your new name is now #{new_name}. You may proceed with your mission, and good luck"