#Create empty hash

interior_info = {}

#Ask designer for user information 

puts "What is the client's name?"
interior_info[:name] = gets.chomp

puts "How old are they?"
interior_info[:age] = gets.chomp.to_i

puts "How many kids do they have?"
interior_info[:kids] = gets.chomp.to_i

puts "What is their style preference?"
interior_info[:style] = gets.chomp

puts "What is their favorite color of blue?"
interior_info[:color] = gets.chomp

#Put information into a hash

p interior_info

#Print hash back out onto screen 