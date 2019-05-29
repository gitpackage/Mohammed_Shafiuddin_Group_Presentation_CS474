
class Parent
    def initialize              # Constructor: ken word "initialize" 
        @name = "First Parent"  # instance varable: @variableName 
        @numberChildren = 2     # instance varable: @variableName 
        puts "Parent initialize called"
        end    
    def intro()
        puts "I am Parent"
        secret()
        puts
    end
    private                     # only Parent can call this
    def secret()
        puts "I have a secret"
    end
    protected                   # Parent, ChildA and ChildB can call this  
    def familySecret()
        puts "I know the secret of our family"
    end
    public                      # Can be called anywhere
    def noSecret()
        puts "I won’t tell you our secret"
    end
end
    
    
class ChildA < Parent
    def initialize
        puts"Child A initialized himself, so Parent initialize not called"
    end
    
    def intro()
        puts "I am Child A"
        familySecret()
        noSecret()
        puts
    end
end


class ChildB < Parent
    def intro()
        puts "I am Child B"
        puts
    end
end

arr = Array.new
parentObj = Parent.new
arr.push(parentObj)        # Store a created object into array
arr.push(ChildA.new)       # Create an object in push() and store in array
arr.push(ChildB.new)
puts
for i in arr
    i.intro()
end


puts"Call public method outside family tree:"
parentObj.noSecret()

# undefined method error for below calls
#parentObj.Secret() 
#parentObj.familySecret()
