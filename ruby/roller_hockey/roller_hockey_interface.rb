# A program that allows users to input their information
	# Name, estimated time of arrival (eta), type of equipment their 
	#bringing, and their rink location
		# Rink location will be a separate table linked to the users table
		# by a foreign key 
# Users capability:
	# Update their eta
		#Can completely erase their ETA if they can't make it
	# Check the contents of the table (linked with the locations table)
		# To see what other times players will be there
# I need 2 tables within my schedule database
	# 1. users
			# Contains primary key, name, time, equipment, and rink_id attributes
				# rink_id is foreign key for this table
	# 2. rinks
			# Contains the rink name and the rinks geographical location
			# This is linked to the users table by its primary key
			# Only 2 rinks to choose from: Naper and Janes
# Method 1 (if more than 1 is needed)
	# Intake user input
		# Name <-- Stored in users table
		# ETA <-- Stored in users table
		# equipment <-- Stored in users table
		# rink location <-- Stored in rinks table (linked back to users table when viewing)
	# Additional input
		# User can ask for 'help' 
			# Gives user list of commands to use and their usage
				# retrieve, update
		# Retrieve info
			# displays table contents showing who is playing
		# Update info
			# allows user to update their info by their NAME.
				# example, they retype their name, then the program will
				# jump to updating their primary key rather than creating a new entry
# Problems so far:
	# Date. I could use a date attribute inside the users table, but maybe 
		# could use some other sort of logic to automatically display date entry?
	