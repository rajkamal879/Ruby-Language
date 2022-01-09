# string interpolation is injecting content into a string
p 5
p 5.next

p 5.to_s  # int 5 to string 5


name = "Raj"
p "Hello name, how are you?"
p "Hello #{name}, how are you?" # string interpolated

age = 22
# p "I am " + age + "years old."
# error as age is not a string
# here string and int are being concatenated hence error

p "I am " + age.to_s + " years old." # int age to string age then problem solved.
p "I am #{age} years old." # string interpolation solves the problem
p "In five years, I will be #{age+5} years old."
p "The result of adding 1 + 1 is #{1+1}."
