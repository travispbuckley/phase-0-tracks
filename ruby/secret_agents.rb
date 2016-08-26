# Paired with Melanie Gershman


# Encrypt method:
# Takes every letter within a string and moves it forward by one. 
# - Accept a string
# - Go through each letter in the string
# - Advance each character within string
# - Store new string
# - Return new string
# - Test for edgecase, z should be followed by a, not ab.


# Decrypt method:
# Reverses the encryptor.
# - Accept a string
# - Take index of letter within alphabet
# - Then subtract one from that index value
# - Use the answer to find the letter
# - Store new string
# alphabet="abcdefghijklmnopqrstuvwxyz"
# letter = alphabet.index("d")
# letter -= 1
# - Test for edgecase, z should be followed by a, not ab.

# Interface pseudocode
# Ask user for password and store password
# Ask user if encrpyting or decrypting
# Intake user input
# Runs user preference and prints results
# program ends with self destruct

#Encryptor
def encryptor(msg)
	i = 0
	while i < msg.length
		if msg[i] == "z"
			msg[i] == "a"
		elsif msg[i] == " "
			msg[i] = msg[i]
		else
			msg[i] = msg[i].next
		end
		i += 1
	end
	msg
end

#DRIVER CODE:
# p encryptor("abc")
# p encryptor("zed")

#Decryptor 
def decryptor(msg)
	i = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz" 
	while i < msg.length
		if msg[i] == "z"
			msg[i] = "a"
		elsif msg[i] == " "
			msg[i] = msg[i]
		else
			alpha_index = (alphabet.index(msg[i])) - 1 
		  	msg[i] = alphabet[alpha_index]
	  	end
	i += 1
	end
	msg
end

# #DRIVER CODE:
# p decryptor("bcd")
# p decryptor("afe")
# p decryptor(encryptor("swordfish"))

# The order of operations is what allows nesting encryptor inside decryptor. 
# Encryptor encrypts swordfish, which gives us txpsegjti, to be coded by decryptor. 
# Decryptor receives the new string, txpsegjti, and then performs the method on that.

# Driver Code
# Ask for password, then encryptor or decryptor
puts "What is your secret password?"
password = gets.chomp.downcase 
puts "Encryptor or Decryptor?"
user_preference = gets.chomp

	if user_preference == "encryptor"
		p encryptor(password)
		valid_input = true
	elsif user_preference == "decryptor"
		p decryptor(password)
		valid = true
	else 
		puts "Please select encryptor or decryptor"
	end


#Exit Program
puts "This message will self-destruct in 5 seconds"

i = 5
while i > 0
	puts "#{i}..."
	i = i - 1
	sleep 1
end
puts "BOOM!"