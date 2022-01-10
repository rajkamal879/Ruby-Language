# we can call a method from another method as long as
# we are calling from valid scope
def add(num1, num2)
  num1+num2
end

def substract(num1, num2)
  num1-num2
end

def multiply(num1, num2)
  num1*num2
end

def calculator(num1, num2, operation)
  if(operation == "add")
    return add(num1,num2)
  elsif(operation == "substract")
    return substract(num1,num2)
  elsif(operation == "multiply")
    return multiply(num1, num2)
  else
    "This is not a valid operation!"
  end
end

p calculator(1,2,"add")
p calculator(2,6,"multiply")
