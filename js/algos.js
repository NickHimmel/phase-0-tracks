// **Release 0: Find the Longest Phrase
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

// **Release 1: Find a Key-Value Match
// var new_object_1 = {name: "Steven", age: 54};
// var new_object_2 = {name: "Tamir", age: 54};
// console.log(new_object_1['age'])
// for (var prop in new_object_1) {
// 	console.log(prop)
// } 
// console.log(Object.keys(new_object_1))

// Create a function that finds key-value matches and returns true or false if there is at least one match
// Create a function called match_objects that takes two match_objects
function compare_objects(object_1, object_2){
// 	-create an empty array called keys_one to hold the keys of the first object
	var keys_1 = [];
// 	-create an empty array called keys_two to hold the keys of the second object
	var keys_2 = [];
// 	-I don't know if it is cheating to use Objects.keys, is that a slick search function? So I am going to use a For in loop to generate the two arrays of keys
// 	-use a for in loop to add the key names to the first key array 
	for (var prop in object_1) {
		// console.log(prop);
		keys_1.push(prop);
	}
// 	-use a for in loop to add the key names to the second key array
	for (var prop in object_2) {
		// console.log(prop);
		keys_2.push(prop);
	}
// 	-now run a for loop with i = 0 and loop until i is less then the length of the first object
	for (var i = 0; i < keys_1.length; i++){
// 		-if keys_one at index i is equal to keys_two at index i AND the value called at keys_one[i] of object one is equal to the value called at keys_one[i] of object two
		if (keys_1[i] == keys_2[i] && object_1[keys_1[i]] == object_2[keys_2[i]]){
			// console.log("True!");
// 			-return true
			return true;
		}
	}
	// console.log(object_1, object_2);
	// console.log(keys_1, keys_2);
	// if no match is found and the loop ends return false
	return false;
}

longest_word(["long phrase","longest phrase","longer phrase"]);
longest_word(["budgie","bird","Sidney and Monkey"]);
compare_objects({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(compare_objects({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(compare_objects({name: "Steven", age: 54}, {named: "Tamir", aged: 54}));


