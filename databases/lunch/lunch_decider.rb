=begin
LUNCH DECIDER
A lunch database for the neurotic obsessive indecisive person.
 
Create a database of lunch options that I really want to eat

CREATE DATABASE
Create a table for dishes you want to have for lunch
	-name of dish
	-description 
	-name of restaurant
	-price
	-have eaten before
	-desire for 
	-healthiness
 
USER INTERFACE

Create a while true loop
	Ask User…
		Do you want to add records, see records, edit records, delete records or exit
			-If add
				add records
			-if see
				-display all information 
				-or display based on criteria
			-if edit
				-ask what they want to edit
			-if delete
				-if they want to delete a single record
				else if you do not want to delete return true to keep loop going
			-if exit
				-false
=end

require 'sqlite3'

db = SQLite3::Database.new("lunch.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS lunch(
    id INTEGER PRIMARY KEY,
    dish VARCHAR(255),
    restaurant VARCHAR(255),
    details VARCHAR(255),
    price INT,
    have_tried BOOLEAN,
	desire INT
  )
SQL

db.execute(create_table_cmd)

def add_lunch(db, dish, restaurant, details, price, have_tried, desire)
  db.execute("INSERT INTO lunch (dish, restaurant, details, price, have_tried, desire) VALUES (?, ?, ?, ?, ?, ?)", [dish, restaurant,details, price, have_tried, desire])
end

#USER CODE

puts "\n*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*$*"
puts "\nThe Lunch Decider"
puts "A handy list of all the dishes you like and crave!"
puts "\n-------------------------------------------------------------"

i = true

while i == true 

	puts "Type 'enter' to add an exciting lunch option! \nType 'print' to view your lunch options \nType 'delete' to delete a lunch option \nType 'exit' to exit"
	user_input = gets.chomp.downcase

	if user_input == "enter"

		puts "\nWhat is the name of the dish?"
		dish = gets.chomp
		puts "What is the name of the restaurant?"
		restaurant = gets.chomp
		puts "What is in the dish?"
		details = gets.chomp
		puts "How much does it cost? (no $ sign no decimal, 1.25 is 125)"
		price = gets.chomp.to_i
		puts "Have you tried it before (true or false)"
		have_tried = gets.chomp
		puts "How much are you craving it (1 to 10, 10 being the most)"
		desire = gets.chomp.to_i

		add_lunch(db, dish, restaurant, details, price, have_tried, desire)
	
	elsif user_input == "print"

		# p lunch_options
		lunch_options = db.execute("SELECT * FROM lunch")
		lunch_options.each do |lunch|
 			puts "\nThe #{lunch['dish']} at #{lunch['restaurant']} features: \n#{lunch['details']}! \nIt is #{lunch['price']}. \nYou have tried it before: #{lunch['have_tried']}. How much do you crave it: #{lunch['desire']}!\n\n"
 		end

	elsif user_input == "delete"

		puts "\nYour current list:"
		lunch_options = db.execute("SELECT * FROM lunch")
		lunch_options.each do |lunch|
 			puts "#{lunch['id']}. #{lunch['dish']}"
		end
		puts "Type the number of the entry you wish to delete"
		delete_at = gets.chomp.to_i
		db.execute("DELETE FROM lunch WHERE id=#{delete_at};")

	elsif user_input == "exit"

		i = false

	end

end
#TEST CODE
# add_lunch(db, "Chicken Club", "Melt Shop", "grilled chicken, mozzarella, bacon, tomatoes, arugula on sourdough toast", 896, "false", 10)