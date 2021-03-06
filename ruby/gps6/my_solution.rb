# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Links ruby files - in this case it will give my_solution the ability to call on another file's data - in this case state data
#
require_relative 'state_data'

class VirusPredictor

#Initializing all the data into variables to be used throughout the code 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Passing all the variables down to the other methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#Calculating predicted deaths based on each state's population and population density - converts a number to a whole number if it is a float
=begin
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
=end
def predicted_deaths
	case @population_density
		when @population_density >= 200 then number_of_deaths = (@population * 0.4).floor
		when @population_density >= 150 then number_of_deaths = (@population * 0.3).floor
		when @population_density >= 100 then number_of_deaths = (@population * 0.2).floor
		when @population_density >= 50 then number_of_deaths = (@population * 0.1).floor
		else number_of_deaths = (@population * 0.05).floor
		end

    	print "#{@state} will lose #{number_of_deaths} people in this outbreak"
	end
end

#Calculating how fast the virus will spread based on each state's population density, the higher the density, faster it will go

=begin  

def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
=end
def speed_of_spread 
	speed = 0.0
	case @population_density
		when @population_density >= 200 then speed += 0.5
		when @population_density >= 150 then speed += 1
		when @population_density >= 100 then speed += 1.5
		when @population_density >= 50 then speed += 2
		else speed += 2.5
		end

    print "and will spread across the state in #{speed} months.\n\n"
	
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each_key do |state|
	each_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
	each_state.virus_effects
end


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
	#One is a regular hash with a key and a value, but the value is a hashy hash - a second hash that uses symbols

#What does require_relative do? How is it different from require?
	#require references modules that can be used for anything
	#require_relative reference files in the same repo, often it's code that could be included in the original code but it's seperated out for readability

#What are some ways to iterate through a hash?
	#You can iterate using each_key, which specifically selects the key of a hash and assigns it to your block parameter 

#When refactoring virus_effects, what stood out to you about the variables, if anything?
	#The variables didn't need much code to them because most of the data was accessed through initialization

#What concept did you most solidify in this challenge?
	#This helped me understand initialization better, which I thought you just put every variable up there
