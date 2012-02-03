   scale=6
	case scale
		when 0
			puts "Lowest scale "
		when 1..4
			puts "below avg"
		when 5
			puts "mediam"
		when 6..9
			puts "above avg"
		when 10
			puts "high"
		else 
			puts "Off scale"
	 end
	
	
   lang= :en
   case lang
	      when :en
            puts"i love my family"
	      when :fr
            puts "i love india"
	      when :zn
            puts "i love all"
	      else      
            puts "i love myself"
	 end