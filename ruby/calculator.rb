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

def to_integer(user_input)
	new_string = p user_input.split
	new_string[0] = new_string[0].to_i
	new_string[2] = new_string[2].to_i
	new_string
end

# Update your program to allow the user to do as many calculations as they want (so the user might enter 3 + 4, receive the answer, and then enter 7 - 1 as the next calculation, and so on). When the user types "done" instead of a calculation, the program can exit.
# When the user has finished performing calculations, but just before the program exits, print a count of the calculations performed, and a history of all the calculations that have been performed. The printout might look something like this:
# so you need an array or hash to hold it

finished_calculations = {}

loop do
	puts 'Please enter a calculation. num (+, /, -, or *) num2 or \'done\' to exit'
	user_input = gets.chomp
	if user_input == 'done'
		break
	else 
		conv_input = to_integer(user_input)
		# p user_input
		user_answer = calculator(conv_input[0], conv_input[1], conv_input[2])
		p user_answer	
		finished_calculations[user_input] = user_answer
		p finished_calculations
	end
	finished_calculations
end

puts "#{finished_calculations.length} calculations performed"
finished_calculations.each do |calculations, answers|
	
	puts "#{calculations} = #{answers}"
end

# p calculator(4, '+', 5)
# p calculator(10, '/', 5)
# p calculator(25, '-', 5)
# p calculator(10, '*', 5)


