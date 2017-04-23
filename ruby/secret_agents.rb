# Encrypt Method

def encrypt(password)

	index = 0

	while index < password.length
		password[index] = password[index].next
		index += 1
	end
	return password
end

puts encrypt(password)

#puts encrypt("zed")

# Decrypt Method

#def decrypt(password)
	# Grab the first three letters of password
#	first_letter = password[0]
#	second_letter = password[1]
#	third_letter = password[2]	

	# Check where a letter is
#	decrypt_first_number = "abcdefghijklmnopqrstuvwxyz".index(first_letter) - 1
#	decrypt_first_letter = "abcdefghijklmnopqrstuvwxyz"[decrypt_first_number]

#	decrypt_second_number = "abcdefghijklmnopqrstuvwxyz".index(second_letter) - 1
#	decrypt_second_letter = "abcdefghijklmnopqrstuvwxyz"[decrypt_second_number]

#	decrypt_third_number = "abcdefghijklmnopqrstuvwxyz".index(third_letter) - 1
#	decrypt_third_letter = "abcdefghijklmnopqrstuvwxyz"[decrypt_third_number]	

	#print out new password
#	decrypt_first_letter + decrypt_second_letter + decrypt_third_letter
#end

#puts decrypt("bcd")
#puts decrypt("afe")

#puts decrypt(encrypt("swordfish"))