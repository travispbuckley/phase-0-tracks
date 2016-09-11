# Create a class with the game interface
# 	-a word will be passed in as the secret word
# 		-store user response as the secret word
# 	- User 2 will try to guess the word
# 		-Will only have the same number of attempts as letters in the word
# 		- Each time they guess, counter goes down
# 		- When they guess correctly, print new array showing the character in place
# 		- When incorrect, store response in another array
# 	-Upon completion, whether winning or losing, print an appropriate message
		
# 	In my class i will need instance methods that account for the user's guesses
# I need to establish the board by the number of characters of the user's input
# 
class Game
	attr_accessor :board, :user_word, :guessed_letters, :guesses, :game_over
	attr_reader :user_word


	def initialize(user_word)
		@board = "_" * user_word.length #Sets the game board to underscores for number of letters of the users word
		@user_word = user_word #sets the users word to a instance variable
		@guesses = user_word.length + 5
		@guessed_letters = [] #stores the guessed letters
		@game_over = false
		@win_game = false

	def letter_checker(letter) #checks the letter given to see if it matches or has been guessed
		if @guessed_letters.include?(letter)  #This means if the guessed letters array includes the letter being passed in, itl just print the statement given
			puts "You already guessed #{letter}! Try again"
		elsif @user_word.include?(letter) #if the user word includes the passed in letter, do the below function
			# Check the characters of the user_word to see if the given letter matches
			letter_index = 0
			user_word.each_char do |a|#.each_char is a string method, will goes through each character of a string. So we can iterate that 
				if a == letter
					board[letter_index] = a
				end
				letter_index += 1
			end 
			puts @board
		else
			puts "WRONG WRONG WRONG, GUESS AGAIN"
			puts @board
		end 
		# Need to add the guessed characters to our array so repeats aren't counted against them
		@guessed_letters << letter #passes the letter into our array
		@guesses -= 1 # subtracts 1 from our allowed number of guesses
		@board #reprints our gameboard
	end 
	#need method to end the game when the user enters the complete word, or if they run out of guesses
	def end_game
		if @board == @user_word || @guesses == 0
			@game_over = true
		end
		@game_over
	end 

	def win_game
		if @board == @user_word || @guesses == 0
			puts "YOU F%$#&*% LEGEND! YOU DID IT!"
			@win_game = true #updates our game to being over with
		else
			puts "get your shit together, you lost"
		end
	end
end