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
p full_name

#Step 2: Create fake name

#Split the name into an array of words
#Swap the fist name and the last name 
#Split the letters up into its own array
#Change all the vowels to the next vowel
#Change all the consonants to the next consonants
#Join the letters back together

#Step 3: Print new fake name 