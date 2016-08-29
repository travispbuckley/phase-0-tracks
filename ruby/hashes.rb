# Pseudocode
# Intake Client details: Name, age, number of children, decor theme, 
# married, years lived there, favorite color
# 1st) Ask designer.user for this info
# 2nd) Convert user input to appropriate data type (.to_s .to_i)
# 3rd) Print out hash after submission is complete
# 4th) Give user chance to update key
# 		-Designer can opt out of this
# 		-if designer gives a key that needs updating, ask for new 
# 			new value and update the key
# 5th) Print hash and exit program

def int_designer

	puts "Please enter client data below"

	puts "Name?"
		user_name = gets.chomp
	puts "Age?"
		user_age = gets.chomp.to_i
	puts "Number of children"
		user_children = gets.chomp.to_i
	puts "Decor theme?"
		user_decor = gets.chomp
	puts "Married? yes or no"
		user_marriage = gets.chomp.downcase
		if user_marriage == "yes"
			user_marriage = true
		elsif user_marriage == "no"
			user_marriage = false
		end
	puts "Years at current residence?"
		current_resid = gets.chomp.to_i
	puts "What is your favorite color?"
		user_color = gets.chomp

	client_data = {
		name: user_name

	}

end