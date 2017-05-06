
class Santa	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender	= gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end


	#getter methods
	def age 
		@age
	end

	#gets_mad_at argument X
	#set that method so you can write it later
	#create a method that takes a reindeers name as an argument
	#iterate through the ranking
	#if the agrgument equals the name of variable iterating through	
	#shift  that name to the back 

	def get_mad_at
		@reindeer_ranking
	end

	#setter method 
	def age=(new_age)
		@age = new_age
	end

	def get_mad_at=(new_order)
		@reindeer_ranking = new_order
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def diversity
		puts "This santa listed they are #{@gender} and #{@ethnicity} on their employment diversity form"
	end
end

#Release 0 Initial Method Calls
santa = Santa.new("Lady Santa", "Santa")
#santa.speak
#santa.eat_milk_and_cookies("snickerdoodle")

#Release 1 Adding Santa Attributes 
#santas = []
#santa_diversity = [["Female", "Asian"], ["Male", "Latino"], ["Non-binary", "Caucasian"], ["Prefer not to say", "Mixed"]]

#santa_diversity.each do |gender, ethnicity|
	#	santas << Santa.new(gender, ethnicity)
#end

#santas.each do |santa|
#	santa.diversity
#end

#Release 2 Changing Attributes with a method

santa.age = santa.age + 1
puts "Santa is now #{santa.age} old"

#create an array to put the 
santa.get_mad_at = santa.get_mad_at.rotate
puts "The new order is now #{santa.get_mad_at}"


