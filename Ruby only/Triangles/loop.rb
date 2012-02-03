loop do
  print "Type something: "
  line = gets
  break if line =~ /q|Q/
  puts line
end

 
