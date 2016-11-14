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

end