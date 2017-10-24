class StringCalculator
	def self.add string
		if string.empty?
			0
		else
			numbers = string.split(",")
			numbers.map! do |num|
				num.to_i
			end
			numbers.reduce(:+)
		end
	end
end