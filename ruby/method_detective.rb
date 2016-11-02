# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(1, "o")
# => “zoom”

puts "enhance".center(15)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".ljust(18, " suspects")
puts "the usual".insert(-1, " suspects")
# => "the usual suspects"

puts " suspects".rjust(18, "the usual")
puts " suspects".insert(0, "the usual")
# => "the usual suspects"

puts "The case of the disappearing last letter".chomp("r")
puts "The case of the disappearing last letter".chop
puts "The case of the disappearing last letter".slice(0, 39)
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".slice(1, 39)
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4