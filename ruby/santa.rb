
class Santa	

	#Release 1 | Give Santa Attributes
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
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
	#getter methods
	def age 
		@age
	end

	#Create a method that takes a bad reindeer's name (trouble)
	#Within that method do the following: 
		#Loop through each reindeer. |good|
		#If the bad reindeer's name (trouble) equals one of the reindeer's names |good|
		#Take that reindeer's index and make it the last index (-1)
		#Print new array
	def get_mad_at(trouble)
		@reindeer_ranking.each do |good|
			if trouble == good
				bad_reindeer = @reindeer_ranking.delete(good)
				@reindeer_ranking << bad_reindeer
			end
		end
	end

	#setter method 
	def age=(new_age)
		@age = new_age
	end
	
end

#Release 0 Driver Code
	santa = Santa.new("Lady Santa", "Santa")
	#santa.speak
	#santa.eat_milk_and_cookies("snickerdoodle")

#Release 1 Driver Code 
	#santas = []
	#santa_diversity = [["Female", "Asian"], ["Male", "Latino"], ["Non-binary", "Caucasian"], ["Prefer not to say", "Mixed"]]

	#santa_diversity.each do |gender, ethnicity|
		#	santas << Santa.new(gender, ethnicity)
	#end

	#santas.each do |santa|
	#	santa.diversity
	#end

#Release 2 Driver Code
santa.age = santa.age + 1
puts "Santa is now #{santa.age} old"

p santa.get_mad_at("Vixen")
p santa.get_mad_at("Rudolph")


