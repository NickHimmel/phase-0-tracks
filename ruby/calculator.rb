# Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.

def calculator (integer_1, operator, integer_2)
	if operator == '+'
		integer_1 + integer_2
	elsif operator == '/'
		integer_1 / integer_2
	elsif operator == '-'
		integer_1 - integer_2
	elsif operator == '*'
		integer_1 * integer_2
	end
end

def to_int(user_input)
	new_string = p user_input.split
	new_string[0] = new_string[0].to_i
	new_string[2] = new_string[2].to_i
	new_string
end

p calculator(4, '+', 5)
p calculator(10, '/', 5)
p calculator(25, '-', 5)
p calculator(10, '*', 5)

puts 'Please enter a calculation. num (+, /, -, or *) num2'
user_input = gets.chomp
user_input = to_int(user_input)
p user_input
p calculator(user_input[0], user_input[1], user_input[2])