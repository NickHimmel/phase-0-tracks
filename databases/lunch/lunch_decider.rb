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
				-if they want to delete all records
					-give the user a warning are you sure
				else if you do not want to delete return true to keep loop going
			-if exit
				-false
=end

require 'sqlite3'

db = SQLite3::Database.new("lunch.db")
# db.results_as_hash = true

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
puts "\n-------------------------------------------------------------"

i = true

while i == true 
	puts "Type 'enter' to add an exciting lunch option! \nType 'exit' to exit"
	user_input = gets.chomp.downcase
	if user_input == "enter"
		puts user_input
	elsif user_input == "exit"
		i = false
	end
end
#TEST CODE
# add_lunch(db, "Chicken Club", "Melt Shop", "grilled chicken, mozzarella, bacon, tomatoes, arugula on sourdough toast", 896, "false", 10)