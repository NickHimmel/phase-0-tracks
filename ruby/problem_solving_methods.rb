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
