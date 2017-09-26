class Person
	attr_accessor :name, :sex, :age, :weight, :height		# Makes getter and setter methods with the given names for the class of Person
	# attr_reader can be used to only make a getter method
	# attr_writer can be used to only make a setter method
	def initialize(name, sex, age, weight, height)			# This is the constructor method
		self.name = name
		self.sex = sex
		self.age = age
		self.weight = weight
		self.height = height
	end

	def calculate_bmi
	  (self.weight / (self.height  ** 2)).to_i
	end

	def calculate_calories
	  if self.sex == "Male"
	    bmr = 66.47 + (13.7 * self.weight) + (5 * self.height * 100) - (6.8 * self.age)
	  else
	    bmr = 655.1 + (9.6 * self.weight) + (1.8 * self.height * 100) - (4.7 * self.age)
	  end
	  bmr.to_i
	end

	def describe
		puts "#{self.name} has a BMI of #{self.calculate_bmi}. Recommend calorie intake is #{self.calculate_calories} calories"
	end
end