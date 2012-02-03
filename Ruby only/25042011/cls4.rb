class Count
	@@cnt=0
	def initialize(x,y)
		@x=x
		@y=y
	end
	def hello
		@x+=@y
		@@cnt+=@x
	end
	def hi
		@@cnt
	end
end

	count=Count.new(2,4)

	count1=Count.new(5,8)

	count2=Count.new(7,4)

	puts count.hello

	puts count.hi

	puts count1.hello

	puts count1.hi

	puts count2.hello

	puts count2.hi

