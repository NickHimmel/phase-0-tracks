def search_array(arr, value)
	#value = 1 which at index 3
	#arr[loop] = value
	#arr[3] = 1
	#looking for value = arr[3]
	i = 0
	while i < arr.length
		if arr[i] == value
			arr_position = i
		end
		i += 1
	end
	# end
	p arr_position
end

arr = [42, 89, 23, 1]
search_array(arr, 1)
search_array(arr, 24)


def fib(input)
 fib_array = [0, 1]
 i = 0
 while i < input - 2
 	fib_array << fib_array[-1] + fib_array[-2]
 	i += 1
 end
 p fib_array
 if fib_array[-1] == 218922995834555169026
 	p "Yes"
 end 
 #input = length of the array
 #new array = [0, 1]
 #starts with 0, 1
 # input where stop
 # loop through while index is < input

 #  add 0 + 1 = 1 
 #  add 1 + 1 = 2
 #  add 1 + 2 = 3
 #  add 2 + 3 = 5
 # add until 2 less then input
 
 #[0,1,1,2,3] - the next to push into the array is 5 right
 # add 2 and 3 together 
 # indexes of 2 and 3 are actuall -1 and -2
 # arr[-1] + arr[-2] << new_array
 #[0,1,1] = the next to push into the array is 2
 # add 1 and 1 together
 # inexes of -1 and -2
 #[0,1,1,2] - the next to push into the array is 3
 # add 1 and 2 together
 # arr[-1] + arr[-2]

 #array methods,

 #return [0,1,1,2,3,5]
end

fib(6)
fib(100)
#[0,1,1,2,3,5]
#218922995834555169026

#2 Visualization helps, you can google for definitions and examples, read through other pseudocode
#3 These can be fustrating and scary once you are trying to impliment it, but that is part of the process. You just to develop stragies to identify how you feel and when you need to take a break
#4 create a pseudocode for bubble sort
# sort an arry of integers  using sorting algorithm  return sorted version of array 
# create a bubble sort method that will take an array of integers
# the method will sort intergers integers of smallest to biggest
# check first array index with the next array index and if the first index value is larger swap position
# if the same don't swap but check second array index with third array index. 
# loop array until it is in order from smallest to biggest
#5 implement a sorting method
sorted_arr = arr.sort
p sorted_arr
p sorted_arr.reverse 