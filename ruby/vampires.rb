# puts "How many employees will be processed"
# employees = gets.chomp

evaluated_employee = ""
puts "What is your name?"
interview_name = gets.chomp.downcase!
puts "How old are you?"
interview_age = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
interview_garlic = gets.chomp.downcase!
puts "Would you like to enroll in the company’s health insurance? (yes/no)"
interview_health = gets.chomp.downcase!

# puts "My am #{interview_name}, I am #{interview_age} old! #{interview_garlic} to garlic bread, #{interview_health} to health insurance" 

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
else
	puts "Results inconclusive!"
end

puts "#{interview_name} is #{evaluated_employee}"


	