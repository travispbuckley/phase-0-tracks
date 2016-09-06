class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
		 "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end

	def speak
		puts "Ho, Ho, Ho! Happy Holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end 
	def santa_info
		puts "This santa is a #{@gender}"
		puts "This santa's ethnicity is #{@ethnicity}"
		puts "This santa's age is #{@age}"
	end 
end 
# santa_one = Santa.new
# santa_one.speak
# santa_one.eat_milk_and_cookies("oatmeal raisin")
santa = Santa.new("male", "caucasian")
santa.speak
santa.eat_milk_and_cookies("chocolate chip")
santa.santa_info