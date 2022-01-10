# size method only works on numeric range.


numbers = 143..796

p numbers.size()

numbers = 143...796
p numbers.size() # size get reduced by 1.
