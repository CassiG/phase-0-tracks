arr = [1, 2, 3, 4, 5]

def array_search(num1, num2)
	i = 0
	while i < num1.length
		if num2 == num1[i]
			puts i 
		end
		i += 1
	end
end

array_search(arr, 5)