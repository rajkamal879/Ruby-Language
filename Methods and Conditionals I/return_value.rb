def addTwoNumber(num1, num2)
  return num1+num2 # return is explictly written.
end
# if return keyword is not there, it will be implicit return
# in that case, method is going to return the last expression of the method body.


puts addTwoNumber(2,4)


def addTwoNumber2(num1, num2)
  num1 + num2 # return is implicit here.
  # last expression is num1+num2 here, so it will get returned..
end

puts addTwoNumber2(12,12)


# method returning nil
def hello
  # as there is nothing in the method body
  # it will return nil
end
p hello

# first method
def return_string
  "Hello there" # string is returned.
end
p return_string

# second method
def return_guess

  puts "hello there" # this will return what puts returns
  # puts and print always returns nil.
end
p return_guess
