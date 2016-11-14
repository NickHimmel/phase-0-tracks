# Build a house out of classes

HOUSE CLASS
Attributes:
- rooms (a collection of Room instances)
Methods:
-getter for rooms
-add room (only allows up to 10 rooms)
-square_footage (adds up the house's square footage and returns it as an integer)
-total_value (adds up value of it all rooms)
-to_s override

ROOM CLASS
Attributes:
-name
-width
-length
-items (a collection of Item instances)
Methods: 
-getters for items, name, width, length
-setter for items, name 
-total value (adds up prices of items)
-to_s override

#ITEM CLASS
Attributes
-name
-color
-price
Methods:
-getters for color, price, name
-to_s override