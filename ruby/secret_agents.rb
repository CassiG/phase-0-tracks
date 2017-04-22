# Encrypt Method

def encrypt(password)
	# Grab the first three letters of password
	first_letter = password[0]
	second_letter = password[1]
	third_letter = password[2]

	#Check if any of the letters is a "aa" 
	     #If so, make it "a". 
	     #If not print the next letter
    if first_letter.next == "aa"
    	encrypt_first = "a"
    elsif
    	encrypt_first = first_letter.next
    end

    if second_letter.next == "aa"
    	encrypt_second = "a"
    elsif
    	encrypt_second = second_letter.next
    end

    if third_letter.next == "aa"
    	encrypt_third = "a"
    elsif
    	encrypt_third = third_letter.next
    end

    #Print out new password
    encrypt_first + encrypt_second + encrypt_third

end

puts encrypt("abc")
puts encrypt("zed")

# Decrypt Method

def decrypt(password)
	# Grab the first three letters of password
	first_letter = password[0]
	second_letter = password[1]
	third_letter = password[2]	

	# Check where a letter is
	decrypt_first_number = "abcdefghijklmnopqrstuvwxyz".index(first_letter) - 1
	decrypt_first_letter = "abcdefghijklmnopqrstuvwxyz"[decrypt_first_number]

	decrypt_second_number = "abcdefghijklmnopqrstuvwxyz".index(second_letter) - 1
	decrypt_second_letter = "abcdefghijklmnopqrstuvwxyz"[decrypt_second_number]

	decrypt_third_number = "abcdefghijklmnopqrstuvwxyz".index(third_letter) - 1
	decrypt_third_letter = "abcdefghijklmnopqrstuvwxyz"[decrypt_third_number]	

	#print out new password
	decrypt_first_letter + decrypt_second_letter + decrypt_third_letter
end

puts decrypt("bcd")
puts decrypt("afe")