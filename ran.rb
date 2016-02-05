
class MathObject
    
    
def initialize()
    
end

    

def min(f,g)
    if (f < g)
     return f
    
    elsif (g > f)
     return g
    else
     return g
    end
    
end

def max(h,i)
    if(h < i)
     return i
    elsif (i > h)
     return h
    else
     return h
     
    end
end

def factorial(numb)
    tot =1
    while (numb>1)
    
     tot = tot * (numb * (numb-1))
     numb = numb - 2
     
    end

 return tot
end
def countPath(b,c,d,e)
    x1 = min(b,c)
    y1 = min(d,e)
    x2 = max(b,c)
    y2 = max(d,e)
    right = x2 - x1
    up = y2 - y1
    largest = right + up
    large = max(right,up)
    puts "from (" + x1.to_s + ", " + y1.to_s + ") to (" + x2.to_s + ", " + y2.to_s + ")"
    paths = (factorial(largest)/(factorial(large)*(factorial(largest - large))))
    if(paths == 1)
     return "no " 
    
    else
     return paths
    end
end

def fib(n)
    array_1 = Array.new(n)

t = 1
r = 0
array_1[0]=1

while (t<2) 
 array_1[t] = 1 + r
 t=t+1


end

while (t<n) 
 array_1[t] = array_1[t-1]+array_1[t-2]
 t=t+1

end
t=0
while (t<n)
 print array_1[t].to_s + ", "
 t=t+1

end
 return "nil" 
end


def guess_game(a)
ran = Random.new(a)

ranum = ran.rand(a)


puts 'guess a number 0-' + a.to_s

    loop do
    
    
     inpu = gets.to_i
   
    if (inpu == ranum)
       puts"you are correct"
       break
     
      
   
       
   
    elsif (inpu < ranum)
          puts "guess is too low"
        
    elsif (inpu > ranum)
          puts "guess too high"
    else 
          puts "error"
    end

end
end
end

   
   
   
   


puts "what upper bound would you like"
ub = gets 
object= MathObject.new()

object.guess_game(ub.to_i)


puts "enter a number for fibbing"

fibin = gets.to_i
sequence = object.fib(fibin)
puts sequence.to_s

count = 0
array_2 = Array.new(4)
while (count < 4)
puts "enter a coordinate"
array_2[count] = gets.to_i
count = count + 1
end
path = object.countPath(array_2[0],array_2[1],array_2[2],array_2[3])
puts "there are " + path.to_s + " paths"

