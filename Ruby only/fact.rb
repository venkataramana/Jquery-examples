def fact(n)
          if n == 0
            1
          else
           n.to_i * fact(n.to_i-1)
          end
end
puts fact(ARGV[0].to_i)

