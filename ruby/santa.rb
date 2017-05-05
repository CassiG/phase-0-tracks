
class Santa	
	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance ..."
		@gender	= gender
		@ethnicity = ethnicity
		#@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		#@age = 0
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

#santa = Santa.new("Lady Santa")
#santa.speak
#santa.eat_milk_and_cookies("snickerdoodle")

santas = []
santa_diversity = [["Female", "Asian"], ["Male", "Latino"], ["Non-binary", "Caucasian"], ["Prefer not to say", "Mixed"]]

santa_diversity.each do |gender, ethnicity|
		santas << Santa.new(gender, ethnicity)
end

santas.each do |santa|
	santa.diversity
end


