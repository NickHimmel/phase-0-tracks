puts "What is your name?"
interview_name = gets.chomp
puts "How old are you?"
interview_age = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
interview_garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance? (yes/no)"
interview_health = gets.chomp

puts "My am #{interview_name}, I am #{interview_age} old! #{interview_garlic} to garlic bread, #{interview_health} to health insurance" 

case 
when interview_age < 100
	puts "Probably not a vampire."
else
	puts "Vampire!"
end