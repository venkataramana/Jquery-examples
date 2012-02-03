months=Array.new
puts months.empty?
months=Array.new(10)
puts months.empty?
puts months.inspect
months=Array.new(10, "hello")
puts months
puts months.clear
months=%w(kvr ktr kgr ksr kbt kpv)
print months.class
puts  months

puts months.first
puts months.last