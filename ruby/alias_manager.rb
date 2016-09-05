# Take input of users name
# create fake name with following criteria:
# Swap first and last name
# Change all vowels to next vowl (a=>e, e=>i i=>o o=>u u=>a)
# Change all consonants to next consonent in alphabet (d=>f n=>p)
# Make the methods separate, work on 1, get it right, and then implement it later

def name_scrambler(name)
	new_name = name.downcase.split(' ').reverse!.join(' ')
	name_to_array = new_name.chars
	# This takes the string version of the name and makes it into an array, with each letter separated. 
	consonants = %w{b c d f g h j k l m n p q r s t v w x y z}
	vowels = %w{a e i o u}
	# Setting the new strings we want our conditions to match
	name_to_array.map! do |letter| 
		if letter == "u"
			letter = "a"
 		elsif vowels.include?(letter)
 			# if the letter returns a true value(is a vowel), re-assign a new index to that letter (advanced by 1)
 			new_vowel_index = vowels.index(letter) + 1
 			new_vowel = vowels[new_vowel_index]
		elsif letter == "z"
			letter = "b"
		elsif consonants.include?(letter)
			new_consonant_index = consonants.index(letter) + 1
			new_consonant = consonants[new_consonant_index]
		else
			letter # Accounts for spaces
		end		
	end
	#re capitalize by joining the indiv. letters, splitting into first and last, capitalizing, and rejoining
	name_to_array.join('').split(" ").each{|i| i.capitalize!}.join(" ")
end
name_scrambler("Travis Buckley")



