puts " "

puts " "
puts "  Following are the operations you can do::"
puts " "
puts "  For string reverse :                                      press 1"
puts "  For string Splitting :                                    press 2"
puts "  For string concatination :                                press 3"
puts "  For string capitalization :                               press 4"
puts "  For string lower case :                                   press 5"
puts "  For string upper case :                                   press 6"
puts "  For string comparision :                                  press 7"
puts "  For getting char from string :                            press 8"
puts "  For printing string in our req no.of times :              press 9"
puts "  For deleting our req string :                             press 10"
puts "  For inserting our req substr reverse :                    press 11"
puts "  For making swapping :                                     press 12"
puts "  For getting substring :                                   press 13"
puts "  For excluding last char :                                 press 14"
puts "  For excluding last char :                                 press 15"
puts "  For replacing sub string :                                press 16"
puts " "

puts "Press key here::"
operator=gets

case operator.to_i
             when 1
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "reverse of given string is:"
                     puts enter.reverse

             when 2
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Splitting of given string is:"
                     puts enter.split (//)
             when 3
                     puts "Enter first string"
                     enter=gets.chomp
                     puts "Enter another string"
                     mth= gets.chomp
                      puts "Concatination of both is:"
                      puts enter+" " +mth

             when 4
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Here we capitalize the string"
                     puts enter.capitalize

             when 5
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Made the string in lower case"
                    puts enter.downcase

             when 6
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Made the string in upper case"
                    puts enter.upcase

             when 7
                    puts "Enter a string"
                    enter=gets.chomp
                    puts "Enter another string"
                    mt= gets.chomp
                    puts "Comparision wheather both strings r equl r not"
                    puts enter.eql? mt

             when 8
                     puts "Enter a string"
                     enter=gets.chomp
                    puts "Enter the index value you want"
                    m= gets
                    puts "Getting value at we want"
                    puts enter[m.to_i].chr

              when 9
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Enter the no.of times you want to print"
                     m= gets
                     puts "Printing the string in our required no.of times"
                     puts enter * m.to_i, " "

              when 10
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Enter substr you want to delete"
                     m= gets
                     puts "given substr was deleted"
                     puts enter.delete  m

              when 11
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Enter substr you want to insert"
                     m= gets.chomp
                     puts "Enter index position you want to insert"
                     n= gets.chomp
                     puts "Substr inserted here"
                     print enter.insert(n.to_i,  m)
                      puts " "

              when 12
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Here case swapping will be done"
                     puts enter.swapcase

              when 13
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Enter ur required substr u want"
                     gt= gets.chomp
                     puts "This is u wanted"
                     puts enter[gt.to_s]

               when 14
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "It excludes any char at the last char"
                     puts enter.chop!

              when 15
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "It excludes only last alphabatic char"
                     puts enter.chomp

              when 16
                     puts "Enter a string"
                     enter=gets.chomp
                     puts "Enter a substr u want to replace"
                     g=gets.chomp
                     puts "Enter a substr u want to put"
                     p=gets.chomp
                     puts enter.gsub g.to_s, p.to_s

end

