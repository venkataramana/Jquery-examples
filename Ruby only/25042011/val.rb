
	class Validate

	end


		def val(x)
			puts "Enter your email address"
			x=gets.chomp
			success=true

			if x==nil then
				puts "Email address should be filled up"
				success=false
			else
				success=true
				puts x.grep(/[a-z_.0-9]+@[a-z0-2]+.[a-z0-3]/)
			end

			if x==x.grep(/[a-z_.0-9]+@[a-z0-2]+.[a-z0-3]/)
				puts "Your mail ID accepted"
			else
				 puts "Enter valid email ID"
			end

		end



		val("adfasf@FASF.COM")

