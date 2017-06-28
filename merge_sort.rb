def merge_sort(arr)
	# revisit this again for practice with recursion
	return arr if arr.length < 2
	
	# split array in half
	halfway = arr.length / 2

	# sort the two halves
	b_arr = merge_sort(arr.slice(0, halfway))
	c_arr = merge_sort(arr.slice(halfway, arr.length - halfway))

	arr_final = []
	b_index = 0
	c_index = 0

	# compare values in the halved arrays
	while b_index < b_arr.size && c_index < c_arr.size
		if b_arr[b_index] > c_arr[c_index]
			arr_final << c_arr[c_index]
			c_index += 1
		else
			arr_final << b_arr[b_index]
			b_index += 1
		end
	end

	# add the remaining array that has values left
	# try with #flatten! method in the future
	while b_index < b_arr.size
		arr_final << b_arr[b_index]
		b_index += 1
	end
	while c_index < c_arr.size
		arr_final << c_arr[c_index]
		c_index += 1
	end
	arr_final
end

print merge_sort([5,4,6,2,1,9,3])