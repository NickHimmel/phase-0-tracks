
puts "What is your hamsters name?"
hamsters_name = gets.chomp
puts "What is your hamsters volume level?"
volume_level = gets.chomp.to_i
puts "What is your hamsters fur color?"
fur_color = gets.chomp
puts "Is your hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp
puts "What is your hamsters estimated age?"
age = gets.chomp.to_i
if age == 0
		age = nil
end

puts "Your hamsters name is #{hamsters_name}"
puts "Your hamsters volume level is #{volume_level}"
puts "Your hamsters fur color is #{fur_color}"
puts "Your hamster is a candidate for adoption. #{adoption}"
puts "Your hamsters age is #{age}"
