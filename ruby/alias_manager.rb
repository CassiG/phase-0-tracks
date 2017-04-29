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
	vowel = ['a', 'e', 'i', 'o', 'u'] #first, define a vowel
	
	# map through each letter in the string
	# if letter equals a vowel
	# rotate that vowel to the next vowel 
	
#Change all the consonants to the next consonants
#Join the letters back together

#Step 3: Print new fake name 