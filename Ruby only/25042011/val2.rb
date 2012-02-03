

class Valid

	def validate_mail
		
		puts "Enter kjdaks"
		
		email=gets.chomp

		reg =  /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/

		puts (reg.match(email))? true : false

	end
	
end

	obj = Valid.new("trtrt.sbm57@gmail.com")
	puts obj.validate_mail