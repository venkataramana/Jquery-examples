  # this is a class
  class Ruby1

     def good 					 # def is a method
          @dfsdf = "saf"
          hi="hi..this is ruby1 class"
          puts hi					# puts prints the stmt
     end						# end ends the block

  end

  class Ruby2 < Ruby1
       def fine
	        hello="hello..this is ruby2 class"
	        puts @dfsdf
       end
  end


  mysecon=Ruby2.new
  mysecon.good
  mysecon.fine

