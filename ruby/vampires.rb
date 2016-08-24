def vampire_detector

	puts "What is your name?"
		user_name = gets.chomp 
	puts "what is your age?"
		user_age = gets.chomp.to_i
	puts "What year were you born?"
		birth_year = gets.chomp.to_i
	current_year = 2016 

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
	actual_age = current_year - birth_year
	if user_age == actual_age
		user_age = true
	elsif user_age /= actual_age
		user_age = false
	elsif garlic_bread ==  "Yes"
		garlic_bread = true
	elsif garlic_bread == "No"
		garlic_bread = false
	elsif healthcare == "Yes"
		healthcare = true
	elsif healthcare == "No"
		healthcare = false
	end 

	if user_age && (garlic_bread || healthcare)
		puts "Probably not a vampire"

	else 
		puts "Results inconclusive"
	end 

end 

vampire_detector
