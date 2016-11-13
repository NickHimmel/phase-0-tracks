# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.


# --Class
# Create class WordGame
class WordGame


# 	Need attr_reader values for 
# 		Guess_count
# 		Game_over
# 		word_hidden 
# 		Number_guess	
	attr_reader :word_hidden 
	attr_reader :guess_count
	attr_reader :number_guess
	attr_reader :game_over
	attr_reader :answer_word

# 	Create initialize method 
# 		Need attributes for
# 			Guess_count  is equal to zero
# 			Number_guess is equal to zero
# 			Game_over is set to 0
# 			Word_hidden is an empty array
# 			Answer_word is an empty array
	def initialize
		@answer_word = [];
		@word_hidden = [];
		@guess_count = 0;
		@number_guess = 0;
		@game_over = 0;
	end

# 	Create Method for Word_to_guess with a parameter for the user_word
# 		User_word set to downcase
# 		Set Answer_word equal to the user_word split into an array of characters 
# 		Set number_guess equal to length of answer_word
# 		If answer_word contains characters throw an error, set game_over to 3 and tell the user to try again. 
	def word_to_guess (user_word)
		user_word.downcase!
		@number_guess = user_word.length
		@answer_word = user_word.split("")
	end

# 	Create Method for Secret_word 
# 		Using times set to to the length of Answer_word shovel to word_hidden the  “_” 
# 		characters equal 
	def secret_word
		@number_guess.times do 
			@word_hidden << "_"
		end
		p @word_hidden
	end

# 	Create Method for Check_guess with a parameter for the user_guess
# 		Add 1 to guess_count (+= 1)
# 			If answer_word includes (include?) user_guess (true) then call the method Update_word and pass in user_guess
	def check_guess(user_guess)
		@guess_count += 1
		if @answer_word.include?(user_guess)
			update_word(user_guess)
		end
		@guess_count
	end

# 	Create Method for Update_word with parameter for the user_guess
# 		Loop through answer_word 
# 			If answer_word[at that index] is equal to user_guess then 
# 			Word_hidden[at that index] is equal to answer_word[at that index]
	def update_word(user_guess)
		i = 0
		while i < @number_guess
			if @answer_word[i] == user_guess
				@word_hidden[i] = user_guess
			end
		i += 1
		end
		@word_hidden
	end

# 	Create Method for Check_if_Won
# 		If word_hidden does not include (include?) “_” then set game_over to 1
	def check_if_won
		if @word_hidden.include?("_") == nil
			@game_over = 1
		end
		@game_over
	end
# 	Create Method for Check_if_Lost
# 		If guess_count is equal to number_guess set game_over to 2
	def check_if_lost
		if @guess_count == @number_guess
			@game_over = 2
		end
		@game_over
	end
end

# --User Interface
new_game = WordGame.new 

# Print user experience messages. 
# 	Welcome to the game
# 	These are the rules
# 	Starting the game

puts "-------------------------------------------------------------"
puts "Guess the Word Game "
puts "Player One enters a word, Player Two tries to guest it"
puts "Player Two has only as many guess as the length of the word"
puts "-------------------------------------------------------------"

# Ask Player one for a word that player two has to guess
# Store that word in user_word
# call  Word_to_guess and pass in user_word
# Call  Secret_word

puts "Player One enter a word"
user_word = gets.chomp
new_game.word_to_guess(user_word)
new_game.secret_word

# Create a while loop, while game_over = 0
# Show Player Two the word_hidden,
# Tell Player Two that they have Guess_count out of number_guess
# Ask Player Two to guess the word.
# Store that guess as user_guess
# Call Check_guess and pass in user_guess
# Call Check_if_Won
# Call Check_if_Lost

# When loop breaks 


# If game_over = 1
# 	You win!
# If game_over = 2
# 	You lose, haha!

#TEST CODE-----------------------------------------------
# new_game = WordGame.new 
# new_game.word_to_guess('Unicorn')
# new_game.secret_word
# new_game.check_guess('u')
