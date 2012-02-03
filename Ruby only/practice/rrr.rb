arr=[4,7,1,6,5,9,3,8,0,2]
for i in 0..arr.length-1
	for j in (i+1)..arr.length-1
	
		if(arr[i] > arr[j])
			x=arr[i]
			arr[i]=arr[j]
			arr[j]=x
		end
	end
end
	print arr
	
	