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
// create a variable called longest_str to hold the longest string you find while looping, to be a variable to check long strings against so you can find the longest and will hold the final long string and will be the variable you return.
	var longest_str = "";
// a loop within a loop 
// first for loop starts with one index of the array, one string
	for (var i = 0; i < arry.length; i++) {
		// console.log(arry[i].length);
		// 	the inner loop compares the other indexes against the string at that index
		for (var x = 0; x < arry.length; x++) {
			// console.log(arry[x].length);
			// To now find the longest string run an if statement, if the length of the string at index i is greater then the length of the string at index x AND it is greater then the length of longest_str make longest_str equal to the string at index i.
			if(arry[i].length > arry[x].length && arry[i].length > longest_str.length) {
				longest_str = arry[i]
			}
		}
	}
// return longest_str
	console.log(longest_str);
	return longest_str;
}

longest_word(["long phrase","longest phrase","longer phrase"]);
longest_word(["budgie","bird","Sidney and Monkey"]);