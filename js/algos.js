write a function that takes an array of words and returns the longest word 
for example ["long phrase","longest phrase","longer phrase"] should return "longest phrase"

- create a function called longest_word and pass in an array
- 	create a variable called longest_str
-	call a for loop on array to iterate through the array with variable i
-		call another for loop within the first loop with variable x
-			in the second loop call an if loop, if your array at index i is longer then your array at index x
				then longest_str is equal array at index i
-	return longest_str