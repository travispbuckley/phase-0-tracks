# Take input of users name
# create fake name with following criteria:
# Swap first and last name
# Change all vowels to next vowl (a=>e, e=>i i=>o o=>u u=>a)
# Change all consonants to next consonent in alphabet (d=>f n=>p)
# Make the methods separate, work on 1, get it right, and then implement it later
def name_scrambler
	puts "What is your first and last name?"
	user_name = gets.chomp.downcase #sets user name, lowercases the strings
	split_name = user_name.split(' ') #splits user name into 2 strings in an array
	split_name.reverse! # puts the last name as first name, and saves in the array
	split_name.join(' ')	
end
name_scrambler

# def next_consonant(name)
# 	name_array = name.downcase.chars
# 	consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
# 	vowels = %w{a e i o u}
# 	name_array.map! do |letter| 
# 		# check for edge cases
# 		if letter == "u"
# 			letter = "a"
#  		elsif vowels.include?(letter)
#  			# if a letter is a vowel, reassign the index to that of the next vowel in the vowel array
#  			new_vowel_index = vowels.index(letter) + 1
#  			new_vowel = vowels[new_vowel_index]
# 		elsif letter == "z"
# 			letter = "b"
# 		elsif consonants.include?(letter)
# 			new_consonant_index = consonants.index(letter) + 1
# 			new_consonant = consonants[new_consonant_index]
# 		else
# 			letter
# 		end		
# 	end
# 	#Capitalize both first and last name
# 	name_array.join('').split(" ").each{|i| i.capitalize!}.join(" ")
# end
# next_consonant("Travis Buckley")



