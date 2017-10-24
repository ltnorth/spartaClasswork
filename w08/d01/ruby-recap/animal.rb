# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism

	def self.traits
		puts "Animals can breathe, eat, drink, speak and procreate"
	end

	def eat
		puts "This animal can eat"
	end
	def drink
		puts "This animal can drink"
	end
	def speak
		puts "This animal can speak"
	end
	def breathe
		puts "This animal can breathe"
	end
	def procreate
		puts "This animal can procreate"
	end

end

# Animal.alive

# badger = Animal.new
# badger.eat