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
	# call full_dance_card here to check if dance card if full
	def queue_dance_with(dancer)
		@card << dancer
		full_dance_card
		dancer
	end

	def begin_next_dance
		next_dance = "Now dancing with #{@card[0]}."
		puts next_dance
		@card.delete_at(0)
		next_dance
	end
# 	create a method full_dance_card that caps your dance card at 5, prints a message that your dance card is filled and deletes the last dancer entered. 
	def full_dance_card
		if @card.length > 5
			puts "Your dance card is full! You have to dance with #{@card[0]} before you can add #{@card[-1]}"
			@card.delete_at(-1)
		end
		@card
	end 
end