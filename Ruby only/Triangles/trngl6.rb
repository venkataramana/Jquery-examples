i=1
j=1
k=5
for i in 1..5
	for j in 1..i
		print " "
	end
	
	for j in 1..k
		print " *"
	end
	k=k-1
	puts " "
end