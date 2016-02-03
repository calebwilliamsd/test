
class MathObject
    
def initialize()
    
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





puts 'guess a number 0-'+a.to_s



loop do
    
    
   inpu = gets.to_i
   
   if (inpu == ranum)
       puts"you are correct"
       break
   
    else if (inpu < ranum)
        puts "guess is too low"
        
    else if(inpu > ranum)
        puts "guess too high"
    else 
        puts "error"
    end
end
end
end
    
end

end
puts "what upper bound would you like"
an = gets 
gu= MathObject.new()
gu.guess_game(an.to_i)


puts "enter a number for fibbing"

fibin = gets.to_i
stri = gu.fib(fibin)
puts stri.to_s
