def vampire_detector

	puts "How many employees are being processed today?"
	new_employees = gets.chomp.to_i
	start_number = 0

	until start_number == new_employees
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
		valid_input = false
		until valid_input
			puts "Do you have any allergies? Enter 1 at a time, and type done when complete"
			user_allergy = gets.chomp
			if user_allergy == "done" || user_allergy == "sunshine"
				valid_input = true
			else puts "Please enter another"
			end 
		end
	if (user_name == "Drake Cula") || (user_name == "Tu Fang") || (user_allergy == "sunshine")
			puts "Definitely a Vampire"
		elsif (2016 - birth_year != user_age) && (garlic_bread == "No") && (healthcare == "No")
			puts "Almost certainly a Vampire"
		elsif (2016 - birth_year != user_age) && (garlic_bread == "No" || healthcare == "No")
			puts "Probably a Vampire"
		elsif (2016 - birth_year == user_age) && (garlic_bread == "Yes" || healthcare == "Yes")
			puts "probably not a vampire"
		else 
			puts "Results Inconclusive"
		end 
	p "Your name is #{user_name}, You are #{user_age} years old, You were born in #{birth_year},
	 You have said #{garlic_bread} to garlic bread, and #{healthcare} to healthcare."
	

	start_number = start_number += 1
	end
end 

vampire_detector
puts  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."