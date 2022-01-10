# to check whether an object responds to given method

num = 1000
p num.next()

p num.respond_to?("next")
puts
p num.respond_to?(:next)
p num.respond_to?("class")
p num.respond_to?(:class)

p num.respond_to?("length") # integers does not have length method.

if(num.respond_to?("next") == true)
  p num.next
end
