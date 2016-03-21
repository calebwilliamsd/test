#this is a test for ruby

class Student
    
    def initialize(name,gpa,alive)
         @name = name
         @gpa = gpa
         @alive = alive
    end 
         
    def name
        @name
    end
    
    def gpa
        @gpa
    end
    
    def changename(nname)
        @name = nname
        
    end
    
    def alivey
        @alive = true
    end
    
    def aliven
        @alive = false
    end
    
    def isalive?
        @alive
    end
    
    
end


student = Student.new("Caleb",4.0,true)
puts "is he alive ? "+ (if student.isalive? then "yes" else "no" end)
student.aliven
puts "is he alive ? "+ (if student.isalive? then "yes" else "no" end)
puts "hello this si the run"
puts student.name + " is a student with a gpa of " + student.gpa.to_s
b = 'hi'
b<<' hello again'
puts b