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

house = {}

#USER INTERFACE

def print_house(house)
	p house
end

# Let the user add rooms
can_add_rooms = true

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

rooms = ['Living room', 'bedroom', 'bathroom', 'kitchen', 'bedroom 2', 'bedroom 3']

rooms.each do |room|
	add_room_to_house!(house, room)
end

print_house(house)