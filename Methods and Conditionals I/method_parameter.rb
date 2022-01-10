# method with parameter
def func(name, age)
  puts "Okay your name is #{name}"
  puts "You are #{age} years old."
end

func("raj", 22) # calling/invoking
func "raj",22 # is allowed

name = "aman"
age = 25
func(name, age)
