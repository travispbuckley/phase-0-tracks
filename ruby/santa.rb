class Santa
	def initialize(name, gender, ethnicity)
		@name = name
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
		puts "That was a good #{cookie _type} cookie!"
	end 
	def santa_info
		puts "Meet #{@name}"
		puts "This santa is a #{@gender}"
		puts "This santa's ethnicity is #{@ethnicity}"
		puts "This santa's age is #{@age}"
	end 
end 

santa = Santa.new("Travis", "male", "caucasian")
santa.speak
santa.eat_milk_and_cookies("oatmeal raisin")
santa_info
santa = Santa.new("John", "male", "african-american")
santa.speak
santa.eat_milk_and_cookies("chocolate chip")
santa_info
# comment
