# A program that allows users to input their information <--- Complete
	# Name, estimated time of arrival (eta), type of equipment their 
	#bringing, and their rink location
		# Rink location will be a separate table linked to the users table
		# by a foreign key 
# Users capability: <--- Complete
	# Update their eta
		#Can completely erase their ETA if they can't make it
	# Check the contents of the table (linked with the locations table)
		# To see what other times players will be there
# I need 2 tables within my schedule database <--- Complete
	# 1. users
			# Contains primary key, name, time, equipment, and rink_id attributes
				# rink_id is foreign key for this table
	# 2. rinks
			# Contains the rink name and the rinks 
			# This is linked to the users table by its primary key
			# Only 2 rinks to choose from: Naper and Janes
# Method 1 (if more than 1 is needed)
	# Intake user input <--- Complete
		# Name <-- Stored in users table
		# ETA <-- Stored in users table
		# equipment <-- Stored in users table
		# rink location <-- Stored in rinks table (linked back to users table when viewing)
	# Additional input
		# User can ask for 'help' <--- Complete
			# Gives user list of commands to use and their usage
				# retrieve, update
		# Retrieve info <--- Complete
			# displays table contents showing who is playing
		# Update info
			# allows user to update their info by their NAME.
				# example, they retype their name, then the program will
				# jump to updating their primary key rather than creating a new entry
# Problems so far:
	# Date. I could use a date attribute inside the users table, but maybe 
		# could use some other sort of logic to automatically display date entry?
	
#Step 1: Require sqlite3 for database usage
require 'sqlite3'

# Create my new database

schedule = SQLite3::Database.new("schedule.db")

#Create my tables, making sure not to override any (use the IF NOT EXISTS syntax)
create_table_two_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS rinks(
    id INTEGER PRIMARY KEY,
    rink_name VARCHAR(255)
  )
SQL

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    time VARCHAR(255),
    equip VARCHAR(500),
    rink_id INT,
    FOREIGN KEY (rink_id) REFERENCES rinks(id)
  )
SQL
# Now need to use a command to actually create the table
schedule.execute(create_table_two_cmd)
schedule.execute(create_table_cmd)

def schedule_maker(schedule) #pass in the database
	
	valid_input = false

	until valid_input
		puts "Hi, welcome to Roller Hockey Scheduler. If you are a new user, type 'new user' to enter your information.\nExisting users, type 'help' for a list of commands to update your information.\nType 'view' to check the current users list\nType 'done' when finished"

	first_response = gets.chomp.downcase

		if first_response == "new user"

			puts "Hi, Welcome to the Roller Hockey Schedule. Please Enter your first name."
			f_name = gets.chomp.downcase.capitalize
			puts "Please enter your last name"
			l_name = gets.chomp.downcase.capitalize
			puts "Please enter the rink you plan to go to. Naper or Janes"
			r_name = gets.chomp.downcase.capitalize
				if r_name == "Naper"
					rink_key = 1
				elsif r_name == "Janes"
					rink_key = 2
				end 
			puts "Please enter your equipment? EX: shoes, blades, goalie, etc"
			equipment = gets.chomp.downcase
			puts "Finally, please enter your estimated time of arrival, in this format: 11:30am"
			est_time = gets.chomp.to_s
			# The below is only for new users entering ALL of their information.
			schedule.execute("INSERT INTO users (first_name, last_name, time, equip, rink_id) VALUES (?, ?, ?, ?, ?)",
				f_name, l_name, est_time, equipment, rink_key)
			schedule.execute("INSERT INTO rinks (rink_name) VALUES (?)", r_name)
			valid_input = true

		elsif first_response == "help"
			second_reponse = ""
			until second_reponse == "exit"
				puts "To edit your previous information, try the following commands:\nrink\nequipment\ntime\nThe above will allow you to edit any previously entered information. Type 'exit' when finished."
				second_reponse = gets.chomp.downcase
	
				if second_reponse == "rink"
					puts "What is your last name?"
						l_name = gets.chomp.downcase.capitalize
					puts "What rink will you be going to?"
						new_rink = gets.chomp.downcase.capitalize
						if new_rink == "Naper"
							rink_key = 1
						elsif new_rink == "Janes"
							rink_key = 2
						end 
				schedule.execute("UPDATE users SET rink_id = ? WHERE last_name = ?", [rink_key, l_name]) 
				elsif second_reponse == "equipment"
					puts "What is your last name?"
					l_name = gets.chomp.downcase.capitalize
					puts "What equipment will you be bringing"
					user_equipment = gets.chomp
					schedule.execute("UPDATE users SET equip= ? WHERE last_name= (?)", [user_equipment, l_name])
				elsif second_reponse == "time"
					puts "What is your last name?"
					l_name = gets.chomp.downcase.capitalize
					puts "Please enter a new, updated time? Please use XX:XXpm format"
					new_time = gets.chomp
					schedule.execute("UPDATE users SET time= ? WHERE last_name= (?)", [new_time, l_name])
				else
					puts "Please enter a valid response. See the options below"
				end
			end
		elsif first_response == "done"
			puts "Thank you! Your time has been set. Please come back to update your time, equipment, or rink at any time!"
			valid_input = true
		elsif first_response == "view"
			p schedule.execute("SELECT * FROM users as u JOIN rinks as r ON u.rink_id=r.id") 


		else
			puts "I didn't understand you, please try again."
		end 
	end
	# This nis where the conditionals will go for them to update their information. I will need
	# a conditional for each of the characteristics, as well as a sqlite3 update command for that characteristic
end 

schedule_maker(schedule)