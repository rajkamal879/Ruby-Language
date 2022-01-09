# boolean is either true or false
p (5 < 10) # true
p 12 > 19 # false
# these are boolean object.
var = 5 < 10
p var.class # trueClass

var1 = 5 > 10
p var1.class # falseClass


# .odd? and .even? method
p 10.odd?   # asking if 10 is odd
p 5.odd?  # asking if 5 is odd

p 10.even? # asking if 10 is even..
# .odd? and .even? method does not work for float--error

# predicate and boolean have same meaning.
