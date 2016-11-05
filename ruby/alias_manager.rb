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

#need a method to capitalize both the first and last names of the new secret name.
#need to join the single characters back into a string, then split it again, capitalize each and rejoin it
def join_capitalize (secret_name)
	secret_name = secret_name.join('')
	secret_name = secret_name.split(' ')
	#loop through secret_name and capitialize
	secret_name.map!{|letter| letter.capitalize}
	secret_name = secret_name.join(' ')
end

#Method 1 swapping the first and last name
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
	#the loop through looking for vowels
	#use each do loop to then go through each character
	#check to see if it is a vowel using gsub and replace with the next vowel
	#have to replace with an uppercase vowel, so when a becomes 'e' and then I check for 'e's, those 'a's don't become 'i's and etc
	secret_name = secret_name.split('')
	secret_name.each do |letters|
		letters.gsub!(/[a]/, "E")
		letters.gsub!(/[e]/, "I")
		letters.gsub!(/[i]/, "O")
		letters.gsub!(/[o]/, "U")
		letters.gsub!(/[u]/, "A")
	end
	#then downcase eveything
	secret_name.map!{|letter| letter.downcase}
	
end

#Method 3 Changing all of the consonants to next consonant
#.next, but if it matches a vowel add another .next 
#edge cases are " " and z
def consonant_swap (secret_name)
	
	secret_name.map do |letters|
		
		if letters == " "
			letters
		elsif letters == "z"
			letters.gsub!(/[z]/, "a")
		elsif letters =~ /[aeiou]/
			letters
		else 
			letters.next!
			if letters =~ /[aeiou]/
				letters.next!
			end
		end

	end
	secret_name
end

#driver code

#Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.
#Create two variables one for the original name and one for the converted name
#loop to generate name
loop do
	puts 'Enter agents full name to get super cool secret agent name. Type \'quit\' to exit'
	agent_name = gets.chomp
	secret_name = agent_name.downcase
	if secret_name == 'quit'
		break
	else
		secret_name = name_swap(secret_name)
		secret_name = vowel_swap(secret_name)
		secret_name = consonant_swap(secret_name)
		secret_name = join_capitalize(secret_name)
		p secret_name
	end
end



#first test they gave us
# secret_agent = "Felicia Torres"
# downcase_string(secret_agent)
# secret_agent = name_swap(secret_agent)
# secret_agent = vowel_swap(secret_agent)
# secret_agent = consonant_swap(secret_agent)
# secret_agent = join_capitalize(secret_agent)

# p secret_agent
# GOAL "Felicia Torres" will become "Vussit Gimodoe", 