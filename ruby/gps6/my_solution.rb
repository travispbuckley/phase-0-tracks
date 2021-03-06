# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative calls on a different file that is within the same folder
# 
require_relative 'state_data'

class VirusPredictor
  # Initializes the class instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # takes population density, population, and states and puts them in to predicted death and speed of spread methods
 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Takes the parameters pop density, population, and state and runs them through the conditional statements
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
  # puts parameters population density, and state and runs them through the coniditonal statements
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
# As population density increases, the rate of spread decreases
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

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
  STATE_DATA.each do |state, value|
  new_data = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  new_data.virus_effects
     end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
    # the STATE_DATA is a constant set for the hash. This can be used globally within the files.
# What does require_relative do? How is it different from require?
    # Require relative allows files from the same folder to be passed through
    # Require would need the file path to use these variables
# What are some ways to iterate through a hash?
    # The ruby docs have all the ways to iterare, but commonly .each will go through each key value pair

# When refactoring virus_effects, what stood out to you about the variables, if anything?
    # Instance variables didn't need to be called through the parameters of any of the methods.
    # They can be used anywhere within the class
# What concept did you most solidify in this challenge?
    # Iterating through hashes was really solidified during this challenge.