def fibs(n)
	# n is the number of fibonnaci sequence numbers
	# that will be returned

	# n == 5 => 1,2,3,5,8
	arr = [1,2]
	(n-2).times do
		arr << arr[-1] + arr[-2] 
	end
	arr
end

def fibs_rec(n, arr=[1,2])
	return arr if n <= 2
	arr << arr[-1] + arr[-2]
	fibs_rec(n-1, arr)
end

print fibs(5)
print fibs_rec(5)