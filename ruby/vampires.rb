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
	if (user_name == "Drake Cula") || (user_name == "Tu Fang")
			puts "Definitely a Vampire"
		elsif (2016 - birth_year != user_age) && (garlic_bread == "No") && (healthcare == "No")
			puts "Almost certainly a Vampire"
		elsif (2016 - birth_year != user_age) && (garlic_bread == "No" || healthcare == "No")
			puts "Probably a Vampire"
		elsif (2016 - birth_year = user_age) && (garlic_bread == "Yes" || healthcare == "Yes")
			puts "probably not a vampire"
		else 
			puts "Results Inconclusive"
		end 
	
end 

vampire_detector
