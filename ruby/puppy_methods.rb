# Worked with Shivani on this assignment

# class Puppy

#   def initialize
#   	puts "initializing new puppy instance ..."
#   end 	

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end
#   def speak(n) 
#   	n.times {puts "woof"}
#   end
#   def roll_over
#   	puts "rolled over"
#   end 
#   def dog_years(n)
#   	dog_age = n / 7
#   	puts "You are #{dog_age} years old!"
#   end 
#   def walk(distance)
#   	puts "you walked #{distance} miles!"
#   end

# end
# puppy = Puppy.new
# puppy.fetch("ball")
# puppy.speak(3)
# puppy.roll_over
# puppy.dog_years(70)
# puppy.walk(3)

class Blackhawks_players
	def initialize
	end 

	def goal_scored
		puts "Player dekes left, right, shoots, GOALLLLL!"
	end 
	def goal_saved
		puts "Player kicks out his/her leg..."
		# i = 2
		# while i > 0
		# 	i = i - 1
		# 	sleep 1
		# end
		puts "what a save!"
    end

end 
player = Blackhawks_players.new # these are instances of my class Blackhawks_players

player.goal_scored
player.goal_saved
players = []
50.times do #this will run the new player initializer 50 times and store it into the empty array
	players << Blackhawks_players.new
end

players.each do |player| #Once the 50 things have been stored, can call .each to cycle through each one and DO something to it
	player.goal_scored
	player.goal_saved
end 