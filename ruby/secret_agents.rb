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
		if secret_string[counter] == "z"
			secret_string[counter] = "a"
		else
			secret_string[counter] = secret_string[counter].next
		# anytime the program z delete the letter that follows the letter, because z becomes aa which becomes ab
		# index z, once it is encrypted you have delete the index next to it. 
		end
		counter += 1
	end	
	p secret_string
end

def decrypt (secret_string)
	#go back one letter
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	counter = 0
	while counter < secret_string.length
		if secret_string[counter] == " "
			secret_string[counter] = " "
		else
			index_number = alphabet.index(secret_string[counter]) - 1
			secret_string[counter] = alphabet[index_number ]
			counter += 1
		end
	end
	p secret_string
end

# ask a sercet agent whether they would like to decrypt or encrypt a password
# puts to if else statement 
# conduct the requested operation, prints the result to the screen and exits

puts "What is your secret agent code name?"
codename = gets.chomp 
puts "Welcome Agent #{codename}, do you wish to decrypt or encrypt your secret password?"
puts "Type decrypt or encrypt to proceed"
decrypt_encrypt = gets.chomp
puts "What is the password?"
password = gets.chomp

if decrypt_encrypt == "decrypt"
	decrypt(password)
else
	encrypt(password)
end

encrypt("abc")
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")

decrypt(encrypt("swordfish")) 
