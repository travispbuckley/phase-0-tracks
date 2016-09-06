class Santa
	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, Ho, Ho! Happy Holidays!"
	end 

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end 
end 
santa_one = Santa.new
santa_one.speak
santa_one.eat_milk_and_cookies("oatmeal raisin")