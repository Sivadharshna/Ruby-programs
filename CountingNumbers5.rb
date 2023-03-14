def count_num arr
	(arr.select {|a| a>5}).count
end
print "Enter the size of array: "
n=gets.to_i
arr=Array.new(n)
for i in 0...n
	arr[i] = gets.to_i
end
puts("The count of numbers greater than 5 is #{count_num(arr)}")
