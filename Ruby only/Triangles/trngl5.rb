i=1
j=1
k=6
l=1
for i in 1..6
	j=k
	for j in 1..k
		print " "
	end
	k=k-1
	for l in 1..i
		print "*"
	end
	puts " "
end
