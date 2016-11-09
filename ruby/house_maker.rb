<<<<<<< HEAD
#HOUSE MAKER

#Allow the user to create a house,
#then add rooms, 
#then add items

#House can have up to 5 rooms
#Room can have an unlimited number of items

#BUSINESS LOGIC

def add_room_to_house!(house, room_name)
	if house.keys.length == 5
		false
	else 
		house[room_name] = []
		true
	end
end

def add_item_to_room!(house, room_name, item_name)
	house[room_name] << item_name
end

house = {}

#USER INTERFACE

def print_house(house)
<<<<<<< HEAD
	puts '-----------------'
	puts 'Current house configuration'
	house.each do |room_name, items|
		puts "#{room_name}: #{items}"
	end
	puts '-----------------'
=======
	puts "------------------"
	puts "Current house configuration:"
	house.keys.each_with_index do |room_name, index|
		puts "#{index} - #{room_name}: #{house[room_name]}"
	end
	puts "------------------"
>>>>>>> house_maker
end

# Let the user add rooms
can_add_rooms = true
<<<<<<< HEAD

# Stoop loop when rooms cannot be added

while can_add_rooms
	# Get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp
	# If the user is done, stop loop
	break if room_name == 'done'
	# Otherwise, add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name)
end



# TEST CODE
=======
# Stop loop when rooms cannot be added
>>>>>>> house_maker

while can_add_rooms
	# Get a room name from the user
	puts "Type the name of a room to add (or type 'done'):"
	room_name = gets.chomp
	# If the user is done, stop loop
	break if room_name == 'done'
	# Otherwise, add the room to the house
	can_add_rooms = add_room_to_house!(house, room_name)
	if !can_add_rooms
		puts "sorry, that's too many rooms!"
	end
	print_house(house)
end

<<<<<<< HEAD
rooms.each do |room|
	room_added = add_room_to_house!(house, room)
	add_item_to_room!(house, room, 'cat') if room_added
=======
# Let the user add items to rooms
# In an infinite loop:
	# Ask the user for the number of the room they want to add
	# items to
	# If the user is done, break
	# Otherwise, add the item to the room
	#print the new house configuration
loop do
	puts "Enter the number of the room to add an item to (or type 'done'):"
	inputted_idx = gets.chomp
	break if inputted_idx == "done"
	room_idx = inputted_idx.to_i
	puts "Enter the item to add: "
	item_to_add = gets.chomp
	add_item_to_room!(house, house.keys[room_idx], item_to_add)
	print_house(house)
>>>>>>> house_maker
end
# TEST CODE

# rooms = ['Living room', 'bedroom', 'bathroom', 'kitchen', 'bedroom 2', 'bedroom 3']

<<<<<<< HEAD


print_house(house)
=======
# rooms.each do |room|
# 	room_added = add_room_to_house!(house, room)
# 	add_item_to_room!(house, room, "cat") if room_added
# end
>>>>>>> house_maker
=======
>>>>>>> gps2_2-ruby
