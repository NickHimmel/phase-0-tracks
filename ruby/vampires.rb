# Match the following conditions in the order they're listed. Your program should base its result on the latest condition matched, not the first condition matched. In other words, it's not a "only one condition will apply" sort of scenario. This may mean repeatedly updating a variable as each condition is checked, so that the variable always contains the most precise result.

# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
# Otherwise, print “Results inconclusive.”
# Print the result at the end of the survey.

def interview_vampire()

	evaluated_employee = ""
	puts "What is your name?"
	interview_name = gets.chomp.downcase!
	puts "How old are you?"
	interview_age = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	interview_garlic = gets.chomp.downcase!
	puts "Would you like to enroll in the company’s health insurance? (yes/no)"
	interview_health = gets.chomp.downcase!

	if interview_age < 100 && (interview_garlic == "yes" || interview_health == "yes")
	
		evaluated_employee = "probably not a vampire"
	
	elsif interview_age >= 100 && (interview_garlic != "yes" || interview_health != "yes")
	
		evaluated_employee = "probably a vampire"
	
	end 

	if interview_age >= 100 && (interview_garlic != "yes" && interview_health != "yes")
	
		evaluated_employee = "almost certainly a vampire"
	
	end

	if interview_name == "drake cula" || interview_name == "tu fang"
		
		evaluated_employee = "definitely a vampire"

	end 

	if evaluated_employee == ""
		
		puts "Results inconclusive!"
	
	end

	puts "#{interview_name} is #{evaluated_employee}"

end

# At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.

# (Hmm, doing things over and over again ... that certainly sounds like a loop, doesn't it?)

puts "How many employees will be processed"
employees = gets.chomp.to_i
i = 1

while i <= employees 
	
	puts i
	i += 1
	
end

# interview_vampire

	# This did not work, I couldn't figure out how stop the if/elsif/else block from exiting the block after the second elseif

	# evaluated_employee = ""
	# puts "What is your name?"
	# interview_name = gets.chomp.downcase!
	# puts "How old are you?"
	# interview_age = gets.chomp.to_i
	# puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	# interview_garlic = gets.chomp.downcase!
	# puts "Would you like to enroll in the company’s health insurance? (yes/no)"
	# interview_health = gets.chomp.downcase!

	# if interview_age < 100 && (interview_garlic == "yes" || interview_health == "yes")
	
	# 	evaluated_employee = "probably not a vampire"
	
	# elsif interview_age >= 100 && (interview_garlic != "yes" || interview_health != "yes")
	
	# 	evaluated_employee = "probably a vampire"

	# elsif interview_age >= 100 && (interview_garlic != "yes" && interview_health != "yes")
	
	# 	evaluated_employee = "almost certainly a vampire"
	
	# elsif interview_name == "drake cula" || interview_name == "tu fang"
		
	# 	evaluated_employee = "definitely a vampire"
		
	# else evaluated_employee == ""
		
	# 	puts "Results inconclusive!"
	
	# end

	# puts "#{interview_name} is #{evaluated_employee}"

	