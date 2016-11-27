=begin
LUNCH DECIDER
A lunch database for the neurotic obsessive indecisive person.
 
Create a database of lunch options that I really want to eat

CREATE DATABASE
Create a table for dishes you want to have for lunch
	-name of dish
	-name of restaurant
	-description 
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
