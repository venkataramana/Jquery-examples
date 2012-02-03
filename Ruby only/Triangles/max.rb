i=30
j=30
k=30

    
	if(i>j && i>k)
	puts "i value is maximum value"
	elsif(k>i && k>j)
		puts "k value is maximum"
	elsif(j>i && j>k)
		puts "j value is maximum"
	elsif(i==j && i !=k)
		puts " i and j are equal"
	elsif(j==k && j !=i)
		puts " k and j are equal"
	elsif(i==k && k!=j)
		puts " i and k are equal"
	else
		puts " All are equal"
	end	