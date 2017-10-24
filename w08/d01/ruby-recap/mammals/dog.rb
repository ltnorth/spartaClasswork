require_relative '../animal'
require_relative '../animal_types/mammals'
# Our dog class/template will inherit from animal and be affected by animal types
class Dog < Animal
	# Use extend or include to allow a class to have all the methods from a module
	# extend makes methods in the module static; include makes the methods intance methods
	# All methods in a module should be written as instance methods (without self. at the start)

	# extend Mammals
	include Mammals

end


sparky = Dog.new
sparky.common_mammal_traits
