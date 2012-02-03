i=1
j=1
k=2
l=1
s=1
 for i in 1..3
	for j in 1..k
		print " "
	end
	k=k-1
	
	for j in 1..i
		print "*"
	end
	for l in 1..i-1
		print "*"
		
	end	
	puts " "
end

for i in 1..2
	for s in 1..i
		print " "
	end
	for j in 1..k
		print "*"
	end
	k=k-1
	for j in 1..k
		print "*"
	end
	k=k-1
	puts " "

end