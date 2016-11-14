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
	attr_reader :word_hidden, :guess_count, :number_guess, :game_over, :answer_word, :guessed_letters


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
		@guessed_letters = [];
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
		@word_hidden
	end

# 	Create Method for Check_guess with a parameter for the user_guess
# 		Add 1 to guess_count (+= 1)
# 			check to see if a player has guessed this word before my calling words_guessed method
# 			If answer_word includes (include?) user_guess (true) then call the method Update_word and pass in user_guess
# 			else print out message that says the guess is wrong 

	def check_guess(user_guess)
		@guess_count += 1
		letter_guessed(user_guess)
		if @answer_word.include?(user_guess)
			update_word(user_guess)
			puts "-- RIGHT ON! #{user_guess} is in the word! Keep going! --"
		else 
			puts "-- WRONG! That letter is not in the word! Try again: --"
		end
		@guess_count
	end

# 	Create Method letter_guessed to check if the user has guessed that word before.
# 		If there are no guessed letters (length of guessed_letters = 0) then push the first guess to @guessed_words
#       if the guessed letter is included (include?) in the guessed letters array, then tell the user and subtract one from guess count
# 		else shovel the user guess to the guessed_letters array

	def letter_guessed(user_guess)
		if @guessed_letters.length == 0
			@guessed_letters << user_guess
		else 
			if @guessed_letters.include?(user_guess)
				puts "--You already guessed that letter! Try again!--"
				@guess_count -= 1
			else
				@guessed_letters << user_guess
			end
		end
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
# 		if @word_hidden is equal to @answer_word
	def check_if_won
		if @word_hidden == @answer_word
			@game_over = 1
		end
		@game_over
	end
# 	Create Method for Check_if_Lost
# 		If guess_count is equal to number_guess set game_over to 2
	def check_if_lost
		if @guess_count == @number_guess + 1
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
puts "Player One enters a word"
puts "Player Two tries to guess it one letter at a time"
puts "Player Two has only as many guess as the length of the word"
puts "-------------------------------------------------------------"

# Ask Player one for a word that player two has to guess
# Store that word in user_word
# call  Word_to_guess and pass in user_word
# Call  Secret_word

puts "Player One enter a word: "
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

# while :game_over = 0
# 	puts 
# end
while new_game.game_over == 0
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "Player Two the word to guess is: #{new_game.word_hidden.join(" ")}"
	puts "Player Two has #{new_game.guess_count} guesses out of #{new_game.number_guess} guesses"
	puts "Player Two which letter do you guess? Or type 'done' to exit"
	user_guess = gets.chomp
	if user_guess == "done"
		break
	end
	new_game.check_guess(user_guess)
	new_game.check_if_won
	new_game.check_if_lost
end
# When loop breaks 


# If game_over = 1
# 	You win!
# If game_over = 2
# 	You lose, haha!
puts "-------------------------------------------------------------"
if new_game.game_over == 1
	puts "Player Two wins!"
elsif new_game.game_over == 2
	puts "Player Two loses, Ha Ha!"
end
puts "-- The word was: '#{new_game.answer_word.join("")}' --"
puts "Your guessed letters were: #{new_game.guessed_letters.join(" ")}"
puts "-------------------------------------------------------------"
#TEST CODE-----------------------------------------------
# new_game = WordGame.new 
# new_game.word_to_guess('Unicorn')
# new_game.secret_word
# new_game.check_guess('u')
