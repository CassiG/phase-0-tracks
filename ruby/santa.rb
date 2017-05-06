
class Santa	

#Release 2 | Refractor Code
	attr_accessor :age, :ethnicity
	attr_accessor :gender

#Release 1 | Give Santa Attributes
	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance ..."
		@gender	= gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

#Release 0 Methods | Bring Santa to Life
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def diversity
		puts "This santa listed they are #{@gender} and #{@ethnicity} on their employment diversity form"
	end

#Release 2 | Change Attributes Outside of Class
	def celebrate_birthday 
		@age + 1
	end

#Create a method that takes a bad reindeer's name (trouble)
#Within that method do the following: 
	#Loop through each reindeer. |good|
	#If the bad reindeer's name (trouble) equals one of the reindeer's names |good|
	#Take out the bad reindeer (he needs some time alone to think about what he did	#Reenter him into the array, which will put him at the end. 
	#Print new array
	def get_mad_at(trouble)
		@reindeer_ranking.each do |good|
			if trouble == good
				bad_reindeer = @reindeer_ranking.delete(good)
				@reindeer_ranking << bad_reindeer
			end
		end
	end

#getter & setter method to update gender outside of the class
#remove getter and setters with new attr_accessor 
	#def age
		#@age
	#end

	#def ethnicity
	#	@ethnicity
	#end

	#def gender
		#@gender
	#end

	#def gender=(new_gender)
	#	@gender = new_gender
	#end
end

santa = Santa.new("Lady Santa", "Santa") #Initialize Santa

#Release 0 Driver Code
	santa.speak
	santa.eat_milk_and_cookies("snickerdoodle")

#Release 1 Driver Code 
	santas = []
	santa_diversity = [["Female", "Asian"], ["Male", "Latino"], ["Non-binary", "Caucasian"], ["Prefer not to say", "Mixed"]]

	santa_diversity.each do |gender, ethnicity|
		santas << Santa.new(gender, ethnicity)
	end

	santas.each do |santa|
		santa.diversity
	end

#Release 2 Driver Code
	puts "Santa is now #{santa.celebrate_birthday} year old"

	p santa.get_mad_at("Vixen")
	p santa.get_mad_at("Rudolph")

	print "Santa's gender is #{santa.gender}, "
	santa.gender = "Magic"
	puts "but also Santa's gender is #{santa.gender}"

	puts "Santa is really #{santa.age} years old and identifies as #{santa.ethnicity}"

#Release 3 | Create a lot of santas
	santa.gender = ["Female", "Male", "Santa", "Non-binary", "Genderless", "Magic", "Lady Santa", "Male Santa"]
	santa.ethnicity = ["Caucasian", "Latino", "Asian", "Mixed", "Prefer not to say", "African American", "Reindeer"]

	puts "How many Santa forms would you like?"
	santa_data = gets.chomp.to_i

	santa_data.times do |data|
		santa.age = rand(1..140)
		puts "Santa Info: Gender: #{santa.gender.sample} | Ethnicity: #{santa.ethnicity.sample} | Age: #{santa.age}"
	end