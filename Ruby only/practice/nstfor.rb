  i,j=1,1
  for i in 1..4
	     for j in 1..4
		      puts i.to_s+ "x" +j.to_s+ "=", i*j , "\n"
	     end
  end


  10.times{|i| print i,"" } 

  4.upto(10){|i| print i}

  1.upto(12) {|i| print "2 x " +i.to_s+ "=" , i*2, "\n"}


  5.downto(1){|i| print i}

  1.upto(4){|i| 1.upto(4){|j| print i.to_s+"x"+j.to_s+"=",i*j, "\n"}}
