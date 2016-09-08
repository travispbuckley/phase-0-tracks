module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(msg)
  	puts msg + "!!!" + " :)"
  end 
end

p Shout.yell_angrily("Darn")
p Shout.yelling_happily("woo-hoo")

