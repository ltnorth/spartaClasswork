require_relative './debug.rb'
class BasicMath
	include Debug

	def square
		puts "Square"
	end

	def cube
		puts "Cube"
	end

	def root
		puts "Root"
	end

end

calc = BasicMath.new
calc.list_methods
calc.count_methods