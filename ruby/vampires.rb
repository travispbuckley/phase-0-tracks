def vampire_detector

	puts "What is your name?"
		user_name = gets.chomp 
	puts "what is your age?"
		user_age = gets.chomp.to_i
	puts "What year were you born?"
		birth_year = gets.chomp.to_i

		valid_input = false
		until valid_input
			puts "Would you like our daily serving of free garlic bread? Yes or No"
			garlic_bread = gets.chomp
			if garlic_bread == "Yes" || garlic_bread == "No"
				valid_input = true
			else puts "Please answer Yes or No"
			end 
		end 
		valid_input = false
		until valid_input
			puts "Would you like company Healthcare? Yes or No"
			healthcare = gets.chomp
			if healthcare == "Yes" || healthcare == "No"
				valid_input = true
			else puts "Please answer Yes or No"
			end 
		end
end 

vampire_detector
