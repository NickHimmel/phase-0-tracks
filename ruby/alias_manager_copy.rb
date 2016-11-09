#swap the first and last name
#swap the vowels (a, e, i, o or u) to the next vowel. So a becomes e, etc
#swap the consonant for the next consonant, skipping vowels
#provide a user interface, so that a user may enter as many names as they want
#store the aliases

#BUSINESS LOGIC

#write a method to swap the names 
def name_swap (secret_name)
	secret_name = secret_name.split(' ')
	secret_name = secret_name.reverse
	secret_name = secret_name.join(' ')
	secret_name
end

#write a method for the vowel swap
#to swap the vowels create an string with all the vowels to check against
#loop through the string and 
#use .index to compare each character against the vowel string
#then use that with vowel[index+1] to swap the vowel to the next vowel
#correction, will also use if statement, if not nill to then vowel switch, otherwise you get an error
#write an edge case if the vowel is u
def vowel_swap (secret_name)
	vowels = 'aeiou'
	i = 0
	while i < secret_name.length 
		index_number = vowels.index(secret_name[i])
		if index_number != nil
			if secret_name[i] == 'u'
				secret_name[i] = 'a'
			else
				secret_name[i] = vowels[index_number + 1]
			end
			
		end
		i += 1
	end
	secret_name
end

#write a method for the consonant swap
#use .next to move to the next character
#create an edge case if it is a vowel
#create an edge case if it is th letter z
#create an edge case for spaces and non letter characters 

#USER INTERFACE
#driver code needs to loop until the user types 'quit'
#need to store the names entered and the results
#write a single method that makes all the methods calls for the program

#Test Code
#use this to test if the methods are working
#Felicia Torres" will become "Vussit Gimodoe"
#downcase the string so you don't have issues with comparisons
agent_name = "Felicia U Torres"
agent_name = agent_name.downcase
agent_name = name_swap(agent_name)
agent_name = vowel_swap(agent_name)
p agent_name