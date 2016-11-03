# Swapping the first and last name.
# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

# This is the most complex algorithm you've had to write, and the toughest release of this challenge. How will you break it down into manageable pieces? Try to identify all of the mini-challenges and considerations that show up in your algorithm, such as

# When will it be helpful to convert the string to an array to work with it more easily?
# How will you figure out whether a letter is a vowel?
# How will you deal with the fact that some letters are uppercase?
# How will you handle edge cases?
# You may find it helpful to write additional methods -- one for each job -- and then combine them. It's less overwhelming, for instance, to start converting your algorithm to code by writing a next_vowel method that takes a vowel character and returns the next vowel character. Once you know that small piece works because you've tested it with a few different vowels, you can use it in your program and trust that it's unlikely to be the source of any bugs that come up. This is a great way to make steady progress.

# If you do successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe", which is a rather odd name. Luckily, our dearest Vussit is from a country no one has ever heard of, mainly because it doesn't really exist.

#To Start write methods for the different parameters and make sure they work before writing code.

#Method 1 swapping the first and last name
def downcase_string (secret_name)
	secret_name.downcase!
end

def name_swap (secret_name)
	secret_name = secret_name.split(' ')
	secret_name = secret_name.reverse
	secret_name = secret_name.join(' ')
	secret_name
end

#Method 2 Changing all of the vowels to the next vowel
# (a, e, i, o, or u)
# (e, i, o, u, or a)
def vowel_swap (secret_name)
	#first separate string into an array of characters
	secret_name = secret_name.split('')
	secret_name.map do |letters|
		letters.gsub!(/[a]/, "E")
		letters.gsub!(/[e]/, "I")
		letters.gsub!(/[i]/, "O")
		letters.gsub!(/[o]/, "U")
		letters.gsub!(/[u]/, "A")
	end
	#loop through looking for vowels
	secret_name 
end

#Method 3 Changing all of the consonants to next consonant
#.next, but if it matches a vowel add another dot next and watch out for spaces
def consonant_swap (secret_agent)
	p secret_agent
	# secret_name.map do |letters|
	# 	# if != .match(vowels)
	# 	#.next
	# end
end

#Method 4 to join and capatlize 
secret_agent = "Felicia Torres"
downcase_string(secret_agent)
secret_agent = name_swap(secret_agent)
secret_agent = vowel_swap(secret_agent)
consonant_swap(secret_agent)
# GOAL "Felicia Torres" will become "Vussit Gimodoe", 