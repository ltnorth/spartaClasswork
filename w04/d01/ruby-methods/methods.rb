# def say_hello
# 	puts "Hello, World!"
# end

# def add_numbers(num1, num2)		# Arguments still work if the brackets aren't there - note: if you put a space before the first bracket it won't work!
# 	puts num1 + num2
# end

# def another_add_numbers(*numbers)		# Numbers is an array of all specified arguments - the * is called a splat
# 	puts numbers
# end

# def more_numbers(num1, num2=32, *numbers, last_num)		# num2 is set to default if not given; last_num is the last argument given; numbers is an array of everything between num2 and last_num
# 	puts numbers
# 	puts last_num
# end

# say_hello
# add_numbers(3, 19)				# add_numbers 3, 19    again this also works
# another_add_numbers(4, 7, 3, 90)

def longest_string(array)
	array.max_by(&:length)
end

longest_string()