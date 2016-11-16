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

// Release 2: Generate Random Test Data
// create a function that takes an integer for length then returns an array with that number of randomly generated strings, each string should have a randomly generated number of lengths with a minimum of 1 and maximum of 10.
// 	-create a function called random_test_data and pass in an integer called number_of
function random_test_data(number_of){
// 		-create an array called chars_array with random characters in order to later generate random character strings
	// console.log(number_of)
	chars_array = ["a", "b",  "c",  "d",  "e",  "f",  "g",  "h",  "i",  "j",  "k",  "l", "m", "n",  "o",  "p",  "q",  "r",  "s",  "t", "u", "v",  "w",  "x",  "y",  "z", ];
// 		-create an array called random_data to hold our answer array
	random_data = [];
// 		-create a for loop that runs the number of times that is the interger passed in
	for (var i = 0; i < number_of; i++){
// 			-create an integer called random_number and use math.random times 10 and plus 1, then rounded down with math.floor
		var random_number = Math.floor(Math.random() * 10) + 1;
		// console.log(random_number)
// 			-create an empty string called random_word to hold your random random_word
		var random_word = "";
// 				-create a new for loop that runs the number of times that is random_number
			for (var x = 1; x <= random_number; x++){
// 					-create an integer called random_index and use math.random times the length of chars_array
				var random_index = Math.floor(Math.random() * chars_array.length) + 1;
// 					-add to random_word from the chars_array at index of random_index
				random_word += chars_array[random_index];
// 				end loop
			}
// 			-push random word to random dat
			random_data.push(random_word)
			// -end loop
	}
// 		-return random_data
	return random_data;
}

longest_word(["long phrase","longest phrase","longer phrase"]);
longest_word(["budgie","bird","Sidney and Monkey"]);
compare_objects({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(compare_objects({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(compare_objects({name: "Steven", age: 54}, {named: "Tamir", aged: 54}));
console.log(random_test_data(3));


