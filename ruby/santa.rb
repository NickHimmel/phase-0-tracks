class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def naughty_nice(list_check)
		puts "I am making a list and checking it twice. Gonna find out who's naughty or nice..."
		if list_check == "nice"
			puts "You have been good for goodness sake!"
		else 
			puts "Naughty! You get a single lump of coal!"
		end
	end 

	def initialize
		puts "Initialize Santa instance"
	end

end

Kris_Kringle = Santa.new
St_Nick = Santa.new
Father_Christmas = Santa.new

St_Nick.eat_milk_and_cookies("chocolate chip")
Kris_Kringle.naughty_nice('naughty')
Father_Christmas.speak