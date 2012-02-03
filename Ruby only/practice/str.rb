class Calc
        def input_values
                puts "Enter the first number"
                a =  gets.chomp
                puts "Enter the second number"
                b = gets.chomp
                puts "Enter the action you want "
                operator = gets.chomp
                case operator
                    when "+"
                            puts a+b
                    when "-"
                            
                             puts a.to_i - b.to_i
                             
                    when "*"
                            
                             puts a.to_i * b.to_i
                             
                    when "/"                           
                             puts a.to_f / b.to_i
                            
                end

        end        
end


  obj=Calc.new
  obj.input_values()
  #obj.add(a,b)
  #obj.sub(a,b)
  #obj.mul(5,6)
  #obj.div(5,6)

