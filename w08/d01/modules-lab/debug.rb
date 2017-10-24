module Debug
	
	def list_methods
		listed_methods = self.methods - Object.methods
		puts listed_methods
		return listed_methods
	end

	def list_attributes
		self.instance_variables.map do |var|
			puts self.
		  puts [var, self.instance_variable_get(var)].join(":")
		end
	end

	def count_methods
		puts list_methods.length
	end

	def count_attributes
		
	end

end