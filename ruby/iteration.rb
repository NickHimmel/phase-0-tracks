#Paired with Tony Lam, original at https://github.com/sjBao/phase-0-tracks/commits/master/ruby/iteration.rb

def take_block
  puts "No block yet!"
  yield
  puts "Block already passed!"
end

#release 1

seasons = ['spring', 'summer', 'autumn', 'winter']
nyc_teams = {'basketball' => 'knicks',
              'hockey' => 'rangers',
              'baseball' => 'yankees'}


#.each
p "#{seasons} before .each"
seasons.each do |season|
  puts season
end
p "#{seasons} after .each"

p "#{nyc_teams} before .each"
nyc_teams.each do |type, name|
  puts type, name
end
p "#{nyc_teams} after .each"

#.map!
p "#{seasons} before .map"
seasons.map! do |season|
  season + " 2016"
end
p "#{seasons} after .map"

#release 2

animals = {'dogs' => 'friendly', 'cats' => 'unfriendly', 'turtles' => 'neutral'}
numbers = [1,2,3,4,6,7,8]
puts "#{numbers} before .delete_if"
numbers.delete_if { |num| num > 4 }
puts "#{numbers} after .delete_if"

puts "#{animals} before .delete_if"
animals.delete_if {|animal, friendliness| friendliness != 'friendly'}
puts "#{animals} after .delete_if"

more_numbers = (1..10).to_a
more_animals = {'dogs' => 'friendly', 'cats' => 'unfriendly', 'turtles' => 'neutral'}
puts "#{more_numbers} before .select"
selected_numbers = more_numbers.select { |num| num < 6 }
puts "#{more_numbers} after .select"
puts "...but these are the selected_numbers: #{selected_numbers}"

puts "#{more_animals} before .select"
selected_animals = more_animals.select { |animal, friendliness| friendliness == 'unfriendly' }
puts "#{more_animals} after .select"
puts "...but these are the selected_animals: #{selected_animals}"


animals = {'dogs' => 'friendly', 'cats' => 'unfriendly', 'turtles' => 'neutral'}
numbers = [1,2,3,4,6,7,8]

puts "#{numbers} before .reject"
rejected_numbers = numbers.reject { |num| num < 6 }
puts "#{numbers} after .reject"
puts "these are the numbers sans rejects: #{rejected_numbers}"

puts "#{animals} before .reject"
rejected_animals = animals.reject { |animals, friendliness| friendliness == 'unfriendly' }
puts "#{animals} after .reject"
puts "these are the animals sans rejects: #{rejected_animals}"

numbers = [1,2,3,4,6,7,8]
puts "#{numbers} before .drop_while"
drop_while_numbers = numbers.drop_while { |num| num < 6 }
puts "#{numbers} after .drop_while"
puts "these are the numbers not dropped: #{drop_while_numbers}"
