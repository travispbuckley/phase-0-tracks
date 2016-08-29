# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”

 "enhance".center(15)
# => "    enhance    "

 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 "the usual".insert(9, " suspects")
#=> "the usual suspects"

 "suspects".insert(-9, "The usual ")
# => "the usual suspects"

 "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

 "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".bytes.to_s.chop.reverse.chop.reverse
# => 122 
# (What is the significance of the number 122 in relation to the character z?
# In the ascii ranges, lowercase letters are assigned byte numbers 97-122)

 "How many times does the letter 'a' appear in this string?".count "a"
# => 4