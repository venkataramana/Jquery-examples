=begin
x="venkataramana is a good human being /n"

x!~ /hai/
  #puts x.grep(/[a-z]/)

puts x.grep(/being \z/)
=end


puts "Enter ph number"

ph=gets.chomp

puts ph.grep(/\d{10}/)




=begin
pho=(040)-4499-5454


puts pho.grep(/[\(\d{3})]?-\d{4}-\d{4}/)

puts pho.grep(/[\(\d\d\d\)]?\d\d\d-\d\d\d\d/)
=end
