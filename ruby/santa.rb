class Santa
	def initialize(name, gender, ethnicity, height)
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
		 "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
		@height = height
	end
	def age #this is the getter for the age of our santa
		@age
	end 
	def celebrate_birthday(current_age) #inputs an age, adds 1, sets as age variable
		@age = current_age + 1
		puts "happy birthday, you are now #{@age}"
	end 
	def speak
		puts "Ho, Ho, Ho! Happy Holidays!"
	end 
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie _type} cookie!"
	end 
	def santa_info
		puts "Meet #{@name}"
		puts "This santa is a #{@gender}"
		puts "This santa's ethnicity is #{@ethnicity}"
		puts "This santa's age is #{@age}"
		puts "This santa's height is #{@height}"
	end 
end 

# santa = Santa.new("Travis", "male", "caucasian", "6'2")
# santa.speak
# santa.eat_milk_and_cookies("oatmeal raisin")
# santa_info
# santa = Santa.new("John", "male", "african-american", "5'11")
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")
# santa_info
santa = Santa.new("Travis", "Male", "caucasian", "5'11")
santa.santa_info
# santa.eat_milk_and_cookies("chocolate")
santa.celebrate_birthday(5) 
santa.santa_info

 