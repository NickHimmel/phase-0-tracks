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

p calculator(4, '+', 5)
p calculator(10, '/', 5)
p calculator(25, '-', 5)
p calculator(10, '*', 5)