class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	# attr_writer :name 

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

		puts "Initialize Santa instance"
	end

	#getter methods
	# def age 
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def gender
	# 	@gender
	# end 

	#setter methods
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
		puts "Bad #{reindeer}, you know what you did! To the back of the list with you!"
		puts "My new list is: #{@reindeer_ranking}"
	end

end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do |i|
	p Santa.new(example_genders.sample, example_ethnicities.sample)
end

p santas

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas

# Kris_Kringle = Santa.new("male", "white")
# Kris_Kringle.get_mad_at("Vixen")
# puts "Kris Kringle is #{Kris_Kringle.age} years old and a #{Kris_Kringle.ethnicity} #{Kris_Kringle.gender}"
# Kris_Kringle.gender = "female"
# # Kris_Kringle.celebrate_birthday
# 27.times do 
# 	Kris_Kringle.celebrate_birthday
# end
# puts "Kris Kringle is #{Kris_Kringle.age} years old and a #{Kris_Kringle.ethnicity} #{Kris_Kringle.gender}"
# # Kris_Kringle = Santa.new
# St_Nick = Santa.new
# Father_Christmas = Santa.new

# St_Nick.eat_milk_and_cookies("chocolate chip")
# Kris_Kringle.naughty_nice('naughty')
# Father_Christmas.speak