# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(msg)
#   	puts msg + "!!!" + " :)"
#   end 
# end

# p Shout.yell_angrily("Darn")
# p Shout.yelling_happily("woo-hoo")

module Shout
	def loud_roar(msg)
		puts "I can't believe they just made that #{msg} sound!"
	end 
end 

class Lion
	include Shout
end
class Angry_mother
	include Shout
end 
