	a= "VNAAAAA"
	b= "EKTRMN"
	j=0
	for i in 0..a.length-1
		k=0
		print a[i].chr
		while(j<=b.length-1)
			print b[k].chr
			j=k
		end
		k=k+1
	end
			