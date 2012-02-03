

class Valid

 # attr :email

  #def initialize(email)
   # @email = email
  #end

	def validate_mail
		
		puts "Enter your email address"
		
		email=gets.chomp

		reg =  /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@(gmail|ymail|yahoo|phptallent|reddiffmail|hotmail)\.(com|co.in|edu|co.aus|tv)$/

		puts (reg.match(email))? "ur mail id is valid" : "Sorry! check it again"

	end

end

	obj = Valid.new(ARGV[0])
	puts obj.validate_mail

