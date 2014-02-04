#(1)

class HelloWorldClass # create class "HelloWorldClass"
    def initialize(name) # define method initialize that takes in name
       @name = name.capitalize # create instance variable name and capatalize it
    end
    def sayHi # define method sayHi
        puts "Hello #{@name}!" #prints Hello and gets name
    end
end

hello = HelloWorldClass.new("sarah") # create new hello world class sarah
hello.sayHi 
