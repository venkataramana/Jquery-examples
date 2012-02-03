class Fruit
        attr_accessor :condition
        def getter(k)
                @kind=k
        end
        def setter
                @kind
        end
        def inspect
                "#{@condition} and #{@kind}"
        end
end
obj=Fruit.new
x=obj.getter("ramana ")
obj.condition="Hello"
puts obj.inspect
puts x
puts obj.setter

