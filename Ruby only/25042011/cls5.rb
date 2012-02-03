class Area
	def Area.rect(l,b)
		a=l*b
		puts "area of rectangle", +a
	end

end
	Area.rect(ARGV[0].to_i,ARGV[1].to_i)
	Area.rect(25,5)

class AreaC
	class << self
		def circle(r)
			area=22/7*r*r
			puts "Area of circle ", +area,"mtrs"
		end
	end
end
	AreaC.circle(5)

	AreaC.circle(10)


class XYZ
end

xyz=XYZ.new
   def xyz.hello
	puts "Hello good morning"
   end
	puts xyz.hello

