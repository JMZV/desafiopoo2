class Person
    def initialize(first, last, age #, type
        )
        @first_name = first
        @last_name = last
        @age = age
        #@type = type
    end

    def birthday
        @age += 1
    end

    def talk
=begin  
    if @type == "Student"
            puts "Aquí es la clase de programación con Ruby?"
        elsif @type == "Teacher"
            puts "Bienvenidos a la clase de programación con Ruby!"
        elsif @type == "Parent"
            puts "Aquí es la reunión de apoderados?"
        end 
=end
    end

    def introduce
=begin 
        if @type == "Student"
            puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Teacher"
            puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Parent"
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
        end
=end   
    end
    
end
# clase estudiante    
class Student < Person
    attr_reader :first_name, :last_name
    def initialize(first, last, age)
        super
    end
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{self.first_name} #{self.last_name}."
        
    end
end
#calse profesor
class Teacher < Person
    attr_reader :first_name, :last_name
    def initialize(first, last, age)
        super
    end
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{self.first_name} #{self.last_name}."         
    end
end

#clase apoderado
class Parent < Person
    attr_reader :first_name, :last_name
    def initialize(first, last, age)
        super
    end
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{self.first_name} #{self.last_name}."       
    end
end

#st = Parent.new('jose','zepeda',37)
#puts st.talk
#puts st.introduce