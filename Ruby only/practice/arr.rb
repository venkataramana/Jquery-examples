
arr = ["ramana", "venkat", "govind", "srini", "teja", "srdr"]

puts arr[3]

hsh={"kvr" => "ramana", "vn" => "venkat", "gv" => "govind",  "sn" => "srini", "tj" => "teja", "sr" => "srdr"} 

puts hsh["gv"]


hashing={"fname" => "venkataramana", "lname" => "kondala", "mno" => "9014391417"}
print "First name      :  " +hashing["fname"],"\n"
print "Last name       :  " +hashing["lname"],"\n"
print "Mobile number   :  " +hashing["mno"],"\n"
hashing["gender"]="Male"
hashing["DOB"]="02/07/1986"
hashing["Qual"]="MCA"
hashing["pro"]="S/W"
print "Gen             :  " +hashing["gender"],"\n"
print "DOB             :  " +hashing["DOB"],"\n"
print "Qualification   :  " +hashing["Qual"],"\n"            
puts "Profession      :  " +hashing["pro"],"\n"

for i in 1..10
    print i,"\n"
end    

hsh.each_key do |key| 
   
   puts key    
    
end 

puts hashing.values

puts hashing.keys

