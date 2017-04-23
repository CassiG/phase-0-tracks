# Encrypt Method

#Get password from user
puts "Please enter your password"
password = gets.chomp.downcase

#Create a function to process letter to the next letter
def encrypt(password)
	index = 0
	while index < password.length

		#if the next letter is a z force it to a
		if password[index] == "z"
			password[index] = "a"

		#otherwise let it go to the next letter
		elsif password[index] = password[index].next
		end
	index += 1
	end
	return password
end

puts encrypt(password)

#puts encrypt("zed")

# Decrypt Method

puts "Please enter your password"
password = gets.chomp.downcase 

def decrypt(password)

	index = 0
	
	while index < password.length
		decrypt_first_number = "abcdefghijklmnopqrstuvwxyz".index(password[index]) - 1
		password[index] = "abcdefghijklmnopqrstuvwxyz"[decrypt_first_number]
 	index += 1
	end
	return password
end

puts decrypt(password)

#puts decrypt(encrypt("swordfish"))