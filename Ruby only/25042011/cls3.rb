class Hello
	attr_reader :hi
	attr_writer :hi
end
	hai=Hello.new
	hai.hi ="I love my parents"
	puts hai.hi

	puts hai.instance_variables

	puts Hello.instance_methods - Object.instance_methods




class Honey
	attr_accessor :sweet, :cute, :beautiful
end

	hony=Honey.new
	hony.sweet="I love honey"
	puts hony.sweet
	puts hony.cute="I am a cute boy"
	puts hony.beautiful="Nature is beautiful"

	puts hony.instance_variables.sort
	puts Honey.instance_methods - Object.instance_methods

