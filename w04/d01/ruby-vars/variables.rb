# All variable names are written in snake case - all lowercase & underscore between words
# You do not need to initialise variables by writing var or int or char

my_variable = 5

puts my_variable

age = 5.5
my_name = "Liam"
a_longer_variable_name_like_this = 4.332

ollies_age = age + 13
puts ollies_age

liams_age = 22
puts liams_age/10
puts liams_age/10.0

my_other_name = "North"
puts my_name + my_other_name
puts "#{my_name} #{my_other_name}" # This is called string interpolation - it adds the variables together and the space between them

my_full_name = "#{my_name} #{my_other_name}"
puts my_full_name.reverse

liams_name = :Liam
puts liams_name
puts :This_is_called_a_symbol_which_is_an_immutable_variable # Immutable means can't be changed!

my_array = [1, 2, 4, :matt, "ollie"]
puts my_array
puts my_array.shuffle # Randomises the order of the elements in an array

my_hash = {              # A hash is just like a JavaScript object 
	name: "Liam",
	age: 22
}

my_other_hash = {        # The old way of writing a hash but does the same thing
	:name => "Liam",
	:age => 22
}

puts my_hash[:name]
puts my_other_hash[:age]
puts my_other_hash[:age].class

puts my_hash[:name].start_with? "L"   	# Boolean
my_hash[:name].reverse!					# Bang method which changes permanantly
puts my_hash[:name].start_with? "L"










