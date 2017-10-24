class Dog
	attr_accessor :fluffiness, :name, :age_in_dog_years

	def initialize(fluffiness, name, age_in_dog_years)
		self.fluffiness = fluffiness
		self.name = name
		self.age_in_dog_years = age_in_dog_years
	end

	def cuddle
		puts "Cuddle"
	end

	def walk
		puts "Walkies!"
	end

	def escape
		puts "Escape"
	end
end