class NAME
	def initialize(value)
		@name=value
	end
	def entername
		@name
	end
end

	obj=NAME.new("I love india")
	#obj.initialize("I love india")
	puts obj.entername



class Man
	attr :male,true         		# Here symbol and true are the arguments in attr method
							# Here "true" means Man cls has 2 mthds ' male 'and  ' male= '
end

gender=Man.new
gender.male="female"
puts gender.male
puts Man.instance_methods - Object.instance_methods
							# Here we called the methods called automatically

