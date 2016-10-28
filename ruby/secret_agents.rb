# encrypt method
# move forward every letter of a string
# "abc" and want to get "bcd"
# assume lowercase input and output 

# reverse that!
# "bcd" back to "abc"



def encrypt (string)
# loop over the string
# for every index take that character and move forward one
	counter = 0
	while counter < string.length
		string[counter] = string[counter].next
		counter += 1
	end	
	p string
end

def decrypt (string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	# index of
	counter = 0
	while counter < string.length
		index_number = alphabet.index(string[counter])
		string[counter] = alphabet[index_number - 1]
		counter += 1
	end
	p string
end

encrypt("abc")
encrypt("zed") 
decrypt("bcd") 
decrypt("afe")