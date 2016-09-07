# Worked with Shivani on this assignment

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(n) 
  	n.times {puts "woof"}
  end
  def roll_over
  	puts "rolled over"
  end 
  def dog_years(n)
  	dog_age = p n / 7
  	puts "You are #{dog_age} years old!"
  end 
  def walk(distance)
  	puts "you walked #{distance} miles!"
  end

end
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(70)
puppy.walk(3)
