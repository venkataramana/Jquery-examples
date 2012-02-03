i=1
j=1
k=7
l=1
for i in 1..7
	for s in 1..k
		print "  "
	end
	k=k-1
	for j in 1..i
		print " *"
	end
	for l in 1..i-1
		print " *"
	end
	print "\n"
end

