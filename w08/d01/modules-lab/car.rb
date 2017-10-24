require_relative './debug.rb'
class Car
	include Debug

	def initialize(color, acceleration, seats)
		@color = color
		@acceleration = acceleration
		@seats = seats
	end

	def drive
		puts "Drive dat car"
	end
	
	def refuel
		puts "Fill 'er up"
	end

	def break_into
		puts "Call the cops!"
	end

end

polo = Car.new("red", 2, 5)
polo.list_attributes