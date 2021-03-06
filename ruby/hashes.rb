
# # Prompt the designer/user for all of this information.
# # Convert any user input to the appropriate data type.
# # Print the hash back out to the screen when the designer has answered all of the questions.
# # Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# # Print the latest version of the hash, and exit the program.

# #Write a method that checks data types
def data_types(client_info)

	# if client_info[:number_of_rooms] =~ /\d/
	# 	puts client_info[:number_of_rooms].to_i
	# else
	# 	"no numbers"
	# end
	client_info.each do |key, value|
		if client_info[key] =~ /\d/
			client_info[key] = client_info[key].to_i
		elsif client_info[key].downcase == "yes"
			client_info[key] = true
		elsif client_info[key].downcase == "no"
			client_info[key] = false
		end
	end
end

# #Write a method that prompts the designer/user for all the information

def input_client(client_info)
	puts "Enter first name:"
	client_info[:first_name] = gets.chomp
	puts "Enter last name:"
	client_info[:last_name] = gets.chomp
	puts "Number of rooms:"
	client_info[:number_of_rooms] = gets.chomp
	puts "Has children:(yes/no)"
	client_info[:children] = gets.chomp
	puts "Likes:"
	client_info[:likes] = gets.chomp
	puts "Hates:"
	client_info[:hates] = gets.chomp
	client_info
end

# #update key method
def add_field(client_info)
	puts "Add a new field to your client information! Or type \"none\"" 
	new_field = gets.chomp
	if new_field == "none"
		puts "Ok!"
	else
		puts "Enter info for #{new_field}"
		field_info = gets.chomp
		client_info[new_field.to_sym] = field_info
	end
	client_info
end

# print out information 
def print_client(client_info)
	client_info.each do |key, value|
		puts "#{key}: #{value}"
	end
end

# #declare a hash
client_information = {}

# #pass that hash to the method to get information
input_client(client_information)

#pass that hash to the update key method
add_field(client_information)

# #pass that hash to the method to check data type
data_types(client_information)

# #print the hash
print_client(client_information)
p client_information