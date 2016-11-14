class Dancer

	attr_reader :name, :card
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
		@card = []
	end

	def pirouette
		twirls = "*twirls*"
		puts twirls
		twirls
	end

	def bow
		bows = "*bows*"
		puts bows
		bows
	end

	def queue_dance_with(dancer)
		@card << dancer
		dancer
	end

	def begin_next_dance
		next_dance = "Now dancing with #{@card[0]}."
		puts next_dance
		@card.delete_at(0)
		next_dance
	end

end