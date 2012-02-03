  def asdf
	   if block_given?        # block_given is a method from kernal.
	       yield
	   else
	       puts "I am an awesome guy"
	   end	
  end	
  puts asdf{ puts "i am a good guy"}    
    # if we write this block, this will be executed,else stmt in else will be executed