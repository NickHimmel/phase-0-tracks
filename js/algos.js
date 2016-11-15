// var arry = ["long phrase","longest phrase","longer phrase"]

// console.log(arry[0].length)
// console.log(arry[1].length)
// console.log(arry[2].length)
// 11 - long phrase
// 14 - longest phrase
// 13 - longer phrase

// if you loop 
// 	on the first loop arry[0] = 11
// 		arry[1] = 14 - bigger
// 		arry[2] = 13 - bigger
// 	on the second loop 
// 		arry[0] = 11 - smaller
// 		arry[2] = 13 - smaller
// 	on the thrid loop 
// 		arry[0] = 11 - smaller
// 		arry[1] = 14 - bigger

// so you need to check for a condition where when compared with the other values they are all smaller.
// create a method called longest_word and pass in the array as a parameter
function longest_word(arry){
// create a variable called longest_str to hold your answer
	var longest_str = "";
// a loop within a loop 
	for (var i = 0; i < arry.length; i++) {
		console.log(arry);
	}
// first for loop starts with one index of the array, one string
// 	the inner loop compares the other indexes against the string at that index
// 		if any of those values are bigger then the string, the string is not the longest
// 		else that string is the biggest. 
// return longest_str
}

longest_word(["long phrase","longest phrase","longer phrase"]);