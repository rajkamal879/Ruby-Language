word = "hello"
p word.capitalize()
p word
# but my original string is not modified.

# in order to modify the original string
word = word.capitalize()
p word

# alternate way to do this modification after calling methods
# is to call with bang method

sentence = "this is a car!"
p sentence
sentence.capitalize! # original string is modified.. bang method
p sentence

# bang method is apllicable on upcase,downcase, swapcase and reverse methods as well
