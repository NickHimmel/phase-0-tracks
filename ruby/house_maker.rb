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
	puts '-----------------'
	puts 'Current house configuration'
	house.each do |room_name, items|
		puts "#{room_name}: #{items}"
	end
	puts '-----------------'
end

# TEST CODE

rooms = ['Living room', 'bedroom', 'bathroom', 'kitchen', 'bedroom 2', 'bedroom 3']

rooms.each do |room|
	room_added = add_room_to_house!(house, room)
	add_item_to_room!(house, room, 'cat') if room_added
end



print_house(house)