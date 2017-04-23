puts "Would you like to decrypt or encrypt a password?"
encryption_answer=gets.chomp
if encryption_answer == "encrypt"
#encrypt
puts "Please enter something to enrypt"
password = gets.chomp 
def encrypt(password)
    index = 0
    while index < password.length
        
            if password[index] == "z"
                password[index] = "a"
            elsif
                password[index] = password[index].next
            end
        index += 1
    end
    return password
end
puts encrypt(password)
else
#decrypt
puts "Please enter something to decrypt"
password = gets.chomp 
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
end
#puts decrypt(encrypt("swordfish"))