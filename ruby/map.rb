letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

# iterate through the array with .map
letters.map! do |letter| #have to use the bang
	# to modify ea item
  puts letter
  letter.next #this will evaluate the new value, so old letter 
  # is letter, new one is letter.next
end

puts "After .map call:"
p letters
p modified_letters









