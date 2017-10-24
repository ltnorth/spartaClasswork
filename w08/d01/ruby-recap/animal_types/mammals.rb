# This is the Mammals module that should be included for all mammals
module Mammals

	def common_mammal_traits
		puts "Mammals are warm-blooded and have nipples"
	end

	class Common
		def feed_young
			puts "Feedin da babby"
		end
	end

	class Biped < Common
		attr_accessor :number_of_legs

		def initialize(number_of_legs)
			self.number_of_legs = number_of_legs
		end

		def legs
			puts "I have #{self.number_of_legs} legs"
		end
	end

	class Quadruped < Common
		attr_accessor :number_of_legs

		def initialize(number_of_legs)
			self.number_of_legs = number_of_legs
		end

		def legs
			puts "I have #{self.number_of_legs} legs"
		end
	end
end

# Can call methods within a module in the same way as you would with a class
# Mammals.common_mammal_traits

# Mammals::Common is a class! Remember Sinatra::Base??
# dolphin = Mammals::Common.new
# dolphin.feed_young

# ring_tailed_lemur = Mammals::Biped.new(2)
# ring_tailed_lemur.feed_young
# ring_tailed_lemur.legs





