# The simple loop - runs until you quit (Ctrl+C)
# loop do
# 	puts "I want to be in American"
# end

# While loop
i = 0
while i < 10
	puts "While: #{i}"
	i+=1
end

# Until loop
j = 0
until j > 10
	puts "Until: #{j}"
	j+=1
end

# For loop
for k in 0..5							# Can loop through array, charsets, hashes - anything that is enumerable
	puts "For loop: #{k}"
end

# Times
5.times do
	puts "OMG"
end

# Each
names = ["abass", "asalmon", "atrout"]
names.each do |name|
	puts name
end


# Array enumerators - these are a little more advanced; might not use these as much
# Map
words = ["Luke", "Anakin", "Leia", "Han", "Chewy"]
words.map do |word|
	word.reverse!
end
puts words
# Reduce
some_numbers = [3576, 468545, 45, 9, 253 ,97, 235, 964, 34]
sum = some_numbers.reduce do |total, number|
	total + number
end
puts sum
# some_numbers.reduce(:+)    -    This does exactly the same in one line

# Select
students = ["Liam", "Luke", "James", "Charlotte"]
cool_students = students.select do |student|
	student.chars.first === "L"
end
puts cool_students





















