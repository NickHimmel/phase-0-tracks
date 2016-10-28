# encrypt method
# move forward every letter of a string
# "abc" and want to get "bcd"
# assume lowercase input and output 

# reverse that!
# "bcd" back to "abc"



def encrypt (secret_string)
# loop over the string
# for every index take that character and move forward one
	counter = 0
	while counter < secret_string.length
		secret_string[counter] = secret_string[counter].next
		# anytime the program z delete the letter that follows the letter, because z becomes aa which becomes ab
		# index z, once it is encrypted you have delete the index next to it. 
		counter += 1
	end	
	p secret_string
end

def decrypt (secret_string)
	# 
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	while counter < secret_string.length
		index_number = alphabet.index(secret_string[counter])
		secret_string[counter] = alphabet[index_number - 1]
		counter += 1
	end
	p secret_string
end

# ask a sercet agent whether they would like to decrypt or encrypt
# puts to if else statement
# ask them a password 
# define a password and check the users password against that
# conduct the requested operation, prints the result to the screen and exits

encrypt("abc")
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")

decrypt(encrypt("swordfish")) 
