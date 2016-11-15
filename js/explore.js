// Create a function called reverse with a parameter that should reverse a string
// 	pass in the word you want to reverse call it str_forward
// 	declare a new variable called str_backward to hold reversed string
// 	loop backward over str_forward with a for loop, var i should equal the length of str_forward - 1 to account for the 0 index
// 		add each letter of str_forward to str_backward as you loop using i as the index and using += to add it to the string
// 	return the new variable
// end function
function reverse(str_forward) {
	var str_backward = ""
	console.log(str_forward)
	for (var i = str_forward.length - 1; i >= 0; i--) {
		str_backward += str_forward[i];
	}
	return str_backward;
}
// console log the function reverse passing in the string "hello world"
console.log(reverse("hello world"));

var new_str = reverse('I think I can I think I can I think I can')
console.log(new_str)