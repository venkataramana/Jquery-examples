  puts " "
 puts "Complex concatination:"
  puts " "
                puts "Enter a string"
	        a= gets.chomp
	        puts "Enter another string"
	        b= gets.chomp

		if a.length > b.length
			k = a.length
		else
			k = b.length
		end
		c = ""
		for i in 0..(k-1)
			if a[i] != nil
				c.concat(a[i].chr)
			end
			if b[i] != nil
				c.concat(b[i].chr)
			end
		end
               print c
		puts " "

