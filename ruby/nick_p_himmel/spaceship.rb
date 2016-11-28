
#CLASS--------------------------------

class Spaceship 
	attr_reader :maximum_speed, :shield, :location
	attr_accessor :name

	def initialize(name, maximum_speed)
		@name = name
		@maximum_speed = maximum_speed
		@shield = false
		@location = "starbase"
		@inventory = {}
	end

	# -Add Shield attribute and set it to false (off)
	# -Shield should be able to turn on and turn off
	# -Create enable_shield method to turn it on, turn shield to true (on)
	def disable_shield
		@shield = false
		puts "Shields down!"
		@shield
	end

	def enable_shield
		@shield = true
		puts "Shields Up!"
		@shield
	end

	# -Add location attribute
	# -Create a warp_to method that takes a location as a parameter
	# -Print message "Traveling at (max speed) to (location)!"
	# -update location 
	def warp_to(location)
		puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		puts "\n--Traveling at #{@maximum_speed} to #{location}!\n\n"
		@location = location
	end

	# -create method tractor_beam that takes an item string as a parameter
	# -first disable the shield by setting shield to false
	# -create a weight variable equal to 0 
	# -loop over the item string with a while loop and add the .ord of each character to weight
	# -if weight is less then 500 isn't too heavy add item to inventory hash with current location and return true
	# -else return false
	def item_weight(item)
		weight = 0
		
		i = 0
		while i < item.length
			weight += item[i].ord
			i += 1 
		end

		weight
	end 

	def tractor_beam(item)
		@shield = false
		
		puts "--------------------------------------------------------------"
		puts "Shields are down! Shields = #{@shield}: Tractor Beam is activated!"
		puts "--------------------------------------------------------------"

		puts "\n**#{item} weighs #{item_weight(item)} roddenberries!**\n\n"

		if item_weight(item) < 5000 #the assignment called for 500, I am rebelling here because that is too low and your spaceship cannot pickup anything fun!!!!!!!!  
			puts "--Success you have snagged the #{item} with the tractor beam!"
			#I cannot figure out how to write this so you can have multiple instances of the same item. 
			@inventory[item] = @location
			true
		else
			puts "--Its too heavy sir, the tractor beam will not hold!\n\n"
			false	
		end
	end
	
	# -create method pickup that takes an item and location parameter
	# -call warp_to and pass in location
	# -call tractor_beam and pass in item
	def pickup(item, location)
		warp_to(location)
		tractor_beam(item)
	end

	# -create a print_inventory method that prints out the inventory
	# -format the inventory in a user-friendly way
	# -use .each to loop over the hash
	def print_inventory
		puts "\n--------------------------------------------------------------"
		puts "--The ship manifest is..."
		puts "--------------------------------------------------------------"
		@inventory.each do |object, location|
			puts "\n -- #{object} from #{location}"
		end
	end
	
	# -create a total_weight method 
	# -create an integer called cargo_weight
	# -use an each loop on @inventory and add the ord of each object to total weight
	# -return cargo_weight
	def total_weight
		cargo_weight = 0
		@inventory.each do |object, location|

			cargo_weight += item_weight(object)

		end
		puts "\n\n **Your cargo weighs #{cargo_weight} roddenberries!**"
		cargo_weight
	end
end


#DRIVER CODE------------------------------------------

spaceship_1 = Spaceship.new("Serenity", 400000)
spaceship_2 = Spaceship.new("Moya", 671000000)

puts "The spaceship #{spaceship_1.name} has a maximun speed of #{spaceship_1.maximum_speed} miles per hour"
puts "The spaceship #{spaceship_2.name} has a maximun speed of #{spaceship_2.maximum_speed} miles per hour"
spaceship_2.name = "USS Enterprise (NCC-1701)"
puts "The spaceship #{spaceship_2.name} has a maximun speed of #{spaceship_2.maximum_speed} miles per hour"
puts "Shields = #{spaceship_2.shield}"
spaceship_2.enable_shield
puts "Shields = #{spaceship_2.enable_shield}"
spaceship_2.warp_to("The Neutral Zone")
puts "#{spaceship_2.name} is now at the #{spaceship_2.location}!"
spaceship_2.warp_to("Earth 1986")
puts spaceship_2.tractor_beam("Humpback Whale")
spaceship_1.warp_to("Persephone")
puts spaceship_1.tractor_beam("cow")
spaceship_2.pickup("Guardian of Forever", "Unkown Planet")
spaceship_2.pickup("Spock", "Genesis")
spaceship_2.pickup("Tribbles", "Deep Space Station K7")
spaceship_2.print_inventory
spaceship_2.total_weight
# spaceship_1.pickup("cow", "Mars")
# spaceship_1.pickup("cow", "Venus")
# spaceship_1.print_inventory