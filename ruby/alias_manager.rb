# Take input of users name
# create fake name with following criteria:
# Swap first and last name
# Change all vowels to next vowl (a=>e, e=>i i=>o o=>u u=>a)
# Change all consonants to next consonent in alphabet (d=>f n=>p)
# Make the methods separate, work on 1, get it right, and then implement it later
def name_scrambler
	puts "What is your first and last name?"
	user_name = gets.chomp #sets user name
	split_name = user_name.split(' ') #splits user name into 2 strings in an array
	split_name.reverse! # puts the last name as first name, and saves in the array
	split_name.join(' ')	
end
name_scrambler



