str = "5"
p str.class   # string class

p str.to_i.class  # integer class..
# str is still string class.

n =  str.to_i # n is integer class.
p n.class

# from int to string : (.to_s)

number = 10
p number.class
p number.to_s.class
str_number = number.to_s
p str_number.class

# to float: to_f
