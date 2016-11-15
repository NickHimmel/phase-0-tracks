// write a function that takes an array of words and returns the longest word 
// for example ["long phrase","longest phrase","longer phrase"] should return "longest phrase"

// - create a function called longest_word and pass in an array
function longest_word(arry) {
// - 	create a variable called longest_str
		console.log(arry)
		var longest_str = "";
// -	call a for loop on array to iterate through the array with variable i
		for (var i = 0; i < arry.length; i++){
// -		call another for loop within the first loop with variable x
			for (var i = 0; i < arry.length; i++){
// -			in the second loop call an if loop, if your array at index i is longer then your array at index x
// 				then longest_str is equal array at index i
				if arry[i].length > arry[x].length {
					longest_str = arry[i]; 
				}
			}
		}
// -	return longest_str
		return longest_str
}

longest_word(["long phrase","longest phrase","longer phrase"])