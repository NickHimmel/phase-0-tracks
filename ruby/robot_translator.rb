# ROBOT TRANSLATOR

# If a letter is capitalized and it's in the first half of the alphabeht, it becomes "bloop".
# ABCDEFGHIJKLM => bloop

# Otherwise, if a letter is capitalized or it's the letter "e", it becomes "buzz".
# NOPQRSTUVWXYZ or e => buzz

# If it's not a letter at all, it becomes "boing".

# Otherwise, it becomes "beep".

# "Happy Halloween!" => "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbuzzbeepboing"

def translate_phrase(phrase)
	#loop through a phase
	char_index = 0
	while char_index < phrase.length
		puts phrase[char_index]
		char_index += 1
	end
end

translate_phrase("Happy Halloween!")