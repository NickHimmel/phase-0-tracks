# module Shout
# 	 # we'll put some methods here soon, but this code is fine for now!
# 	 def self.yell_angrily(words)
# 	 	words + "!!!" + " :("
# 	 end

# 	 def self.yell_happily(words)
# 	 	words + "!!!" + " :)"
# 	 end
# end

# p Shout.yell_angrily("hello")
# p Shout.yell_happily("hello")

module Shout

	 def yell_angrily(words)
	 	words.upcase + "!!!" + " :-("
	 end

	 def yell_happily(words)
	 	words.upcase + "!!!" + " :-)"
	 end

end

class Grumpy_old_man
	include Shout
end

class Toddler 
	include Shout
end

Grampa = Grumpy_old_man.new
p Grampa.yell_angrily("I am mad as hell and I am not going to take it anymore")
Max = Toddler.new
p Max.yell_happily("more more more more")
