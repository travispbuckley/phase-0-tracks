# class Santa
# 	def initialize
# 		puts "Initializing santa instance ..."
# 	end 

# 	def speak
# 		puts "Ho Ho Ho"
# 	end 

# 	def eat_milk_and_cookies(cookie_type)
# 		puts "You ate #{cookie_type}"
# 	end 
# end 

# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")
# new_santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("raisin")

# Now we want to update our santa class with the following ATTRIBUTES:
# Gender (passed in on init), Etnicity (passed in on init), Reindeer_ranking (array of 
# preferred to least preferred ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"])
# and age (not passed in by parameter, defaults at 0)

# class Santa
# 	def initialize(gender, ethnicity)
# 		@ethnicity = ethnicity
# 		@gender = gender
# 		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
# 			"Comet", "Cupid", "Donner", "Blitzen"]
# 		@age = 0		
# 	end 

# 	def speak
# 		puts "Ho Ho Ho"
# 	end 

# 	def eat_milk_and_cookies(cookie_type)
# 		puts "You ate #{cookie_type}"
# 	end 
# 	def info
# 		puts "Gender: #{@gender}"
# 		puts "Ethnicity: #{@ethnicity}"
# 	end 
# end 

# santa = Santa.new("male", "african")
# santa.speak
# santa.eat_milk_and_cookies("chocolate")
# santa.info
#puts "--------------------------------------------------------------"

# We can store our different itterations of the santa, but just pushing them into
# an array or hash. Additionally, we can call array methods on that to iterate through
# and do something with each one. 
# class Santa
# 	def initialize(gender, ethnicity)
# 		@ethnicity = ethnicity
# 		@gender = gender
# 		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
# 			"Comet", "Cupid", "Donner", "Blitzen"]
# 		@age = 0		
# 	end 

# 	def speak
# 		puts "Ho Ho Ho"
# 	end 

# 	def eat_milk_and_cookies(cookie_type)
# 		puts "You ate #{cookie_type}"
# 	end 
# 	def info
# 		puts "Gender: #{@gender}"
# 		puts "Ethnicity: #{@ethnicity}"
# 	end 
# end 
# santas = []
# santa = Santa.new("agender","asian")
# santas << santa
# santa = Santa.new("male", "white")
# santas << santa
# So we are creating a new instance with the male and white parameters,
# and pushing that into our empty array. So now we can do stuff to that array, 
# most obviously, call our instance methods!
# santas.each do #this goes through each array piece and does the instance method info
# 	santa.info
# end 
#puts "--------------------------------------------------------------"

# What if want to use attributes to be available to any code outside of the class?
# We need a method that returns the attribute, then we can use it. This is an
# interface. 
# Getter and Setter methods allow us to make them accessible from outside the class
# 

# class Santa
# 	def initialize(gender, ethnicity)
# 		@ethnicity = ethnicity
# 		@gender = gender
# 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
# 			"Comet", "Cupid", "Donner", "Blitzen"]
# 		@age = 0		
# 	end 
# 	def celebrate_birthday
# 		@age = @age + 1
# 	end 
# 	def get_mad_at(bad_reindeer)
# 		p @reindeer_ranking
# 		@reindeer_ranking.delete(bad_reindeer)
# 		@reindeer_ranking << bad_reindeer
# 		p @reindeer_ranking
# 	end 

# 	def speak
# 		puts "Ho Ho Ho"
# 	end 

# 	def eat_milk_and_cookies(cookie_type)
# 		puts "You ate #{cookie_type}"
# 	end 
# 	def info
# 		puts "Gender: #{@gender}"
# 		puts "Ethnicity: #{@ethnicity}"
# 		puts "Age: #{@age}"
# 	end 
# end 
# santa = Santa.new("male", "white")
# santa.get_mad_at("Dasher")
# santa.celebrate_birthday
# santa.info
# santa.celebrate_birthday
# santa.info

#puts "---------------------------------------------------------------"

# Add setter method that allows gender to be re-assigned outside of the class
# Also add 2 getter methods for age and ethnicity 

class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender

	def initialize(gender, ethnicity)
		@ethnicity = ethnicity
		@gender = gender
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
			"Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0		
	end 
	def celebrate_birthday
		@age = @age + 1
	end 
	def get_mad_at(bad_reindeer)
		@reindeer_ranking.delete(bad_reindeer)
		p @reindeer_ranking
		@reindeer_ranking << bad_reindeer
		p @reindeer_ranking
	end 

	def speak
		puts "Ho Ho Ho"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "You ate #{cookie_type}"
	end 
	def info
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
	end 
	#Getter methods
	# def age #Can get rid of these methods by using the attr_reader shorthand
	# 	@age
	# end 
	# def ethnicity
	# 	@ethnicity
	# end 
	# def gender
	# 	@gender
	# end 
	# #Setter Method to change the gender
	# # Now we will be able to call santa.gender = "female" to re-assign
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end
end 
# santas = []
# santas << Santa.new("male", "white")
# santas << Santa.new("female", "asian")
# santas.each do |santa|
# 	puts "Santa is #{santa.age}, #{santa.ethnicity}, #{santa.gender}. Don't judge."
# end #When calling the attribute, must first use the instance you created
# santa.info #before gender change
# santas = "Female"
# santa.info #after gender change


#Didn't work

# def santa_creator
# 	puts "How many santa's would you like to create?"
# 	num_santa = gets.chomp.to_i

# 	start_number = 0

# 	until start_number == num_santa
# 		santas = []
# 		example_genders = ["male", "female", "agender", "N/A", "bigender"]
# 		example_etnicity = ["american", "asian" "european", "african", "australian"]
# 		santas << Santa.new(example_etnicity.sample, example_genders.sample)
# 		puts "There are now #{santas.length} santas created"
# 	end 
# 	start_number += 1
# 	santas
# end 
# santa_creator

def santa_creator(n) # MEthod for making n number of santas
	santas = []
	example_genders = ["male", "female", "agender", "N/A", "bigender"]
	example_etnicity = ["american", "asian", "european", "african", "australian"]
	n.times do |i|
		puts "Creating santa ..."
		santas << Santa.new(example_genders.sample, example_etnicity.sample)
		puts "You have created #{santas.length} santas"
	end 
	santas
end 
# Now to print our santas, we set our method to a variable we can do a method on
#The 25 santas we create and store in an array aren't usable outside that method,
# So we can set the result of that method equal to something, and since the result was 
# an array, we can iterate on that array to go through each piece by INDEX, and give us the
# the information 
santa_attributes = santa_creator(25) 
santa_attributes.each_with_index do |santa, i|
	puts "#{i+1}. Santa is #{santa.age}, he is #{santa.ethnicity}, and is #{santa.gender}"
end 