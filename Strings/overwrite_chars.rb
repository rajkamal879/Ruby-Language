thing = "rocket ship"
p thing.size()

thing[0] = "p"
p thing
# thing[14] = "u" # error as 14th index is not accessible

# to overwrite
fact = "I love blueberry pie"
p fact
fact[7..10] = "rasp"
fact[7,4] = "rasp" # both way can be used.
p fact

fact[2..5] = "absolutely adore" # starting from 2
p fact # replaces love with absolutely adore
# allowed. important
