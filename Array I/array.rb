# everything in Ruby is an object - integers, floats, string, boolean
# an array is an ordered collection of objects. It can be thought of as a list.

# the array itself is an object. It acts as a container for other objects.
# an array is created with a pair of square bracket..


p [] # empty array

p [].size() # size = 0
p [].class  # Array class

numbers = [1,2,3,4]
p numbers
p numbers.size()
p numbers.empty?
puts
print numbers
puts
puts numbers    # puts print in a different way

toys = ["Teddy bear", "Super Soaker", "Board Game"]

p toys
print toys
puts
puts toys

# an array of different data types
things = [4,true,"Hello", 10.99]
p things

registrations = [true, true, false, true, false]
p registrations

# array of Array
students = [["Boris", 25, "New Tork"],
            ["Raj Kamal", 22, "Varanasi"],
            ["Daya", 23]]

puts students

# shorthand syntax to create an array of strings
names = %w[Jack Raj Joe Annie Maria]
p names

# create an array with Array.new method
p [1,2,3].class   # array
p ["Hello", "World"]

p Array.new() # new empty Array
p Array.new(4) # array of size 4, all are initialized with initialized
p Array.new(4, true) # array of size 4 and all are initialized with true.

p Array.new(3, [1,2,3])
# array of size 3 with all the elements as an individual array with values 1,2,3..

=begin
1, 2, 3 --> array[0]
1, 2, 3 --> array[1]
1, 2, 3 --> array[2]
=end

# accessing array elements
fruits = ["Apple", "orange", "grapes", "banana"]

p fruits.length()  # size of Array = 4
p fruits[0].length() # size of apple element
p fruits[1]
p fruits[2]
p fruits[100] # as index is out of bound it returns nil.

p fruits[fruits.size()-1] # to access the last element of array.


p fruits[-1] # first last element
p fruits.[](-1) # first last element
# this is how [] works in backend.

# access element using fetch method
names = ["Tom", "Herry", "Bob"]
p names[0]
p names[5]  # nil as index is out of bound
# but fetch method throws an error when index is out of bound
p names.fetch(2)  # Bob
# p names.fetch(100) # error
p names.fetch(100, "unknown")
# first arg = index pos
# second arg = what we want to show instead of an error.

# accessing sequential elements
numbers  = [1,3,5,7,9]
p numbers[2]
p numbers[2,3] # start with index 2 and pull out 3 elements..
# arg1 = starting index, arg2 = # of elements.
# the upper bound given as argument exceeds the index, it gives all the elements of the array.
# no error in this case.


# important point to remember
p numbers[0].class  # integer class
p numbers[0,1].class # starting from 0 index give me 1 element as array.


p numbers[1..3] # starting index = 1 and ending index = 3
p numbers[1..3].class  # Array class.

# accessing multiple array elements with .values_at method
channels = ["CBS", "FOX", "NBC", "ESPN", "UPN"]
p channels.values_at(0)  # accessing 0th index
p channels.values_at(0,2,4) # accessing in random fashion
# accessing index 0,2 and 4
# if the index dooes not exists, then its place is ocupied with nil.
p channels.values_at(0,2,4,5)   # ["CBS", "NBC", "UPN", nil]
# returns an Array
# any number of arguments can be there.

# slice method
numbers = [0,2,4,8,10,12,14]
p numbers.slice(3)
p numbers.slice(100)  # nil
p numbers.slice(2,3) # start from index 2 and pull out 3 elements.
p numbers.slice(2..5) #elements in index range [2,5]
# slice works same as that of [].

# Mutation of Array
fruits = ["Apple", "Orange", "Grapes","Banana"]
p fruits
fruits[0] = "Watermelon"
p fruits
p fruits.size()
# we can added element at the index after the last existing index
# here size of fruits array is 4
# last index would be 3
# we can add new element at index 4
fruits[4] = "Guava"
fruits[5] = "Honey"
p fruits.size()
# now its size is 6.
# last index is 5 now.
# if we add new element at 10
# then at indices 6,7,8,9 there would be nil
fruits[10] = "Pine Apple"
p fruits

# mutating multiple elements at a time
fruits[3,2] = ["Dragon Fruit", "Lichy"]
p fruits

fruits[0..3] = ["Lemon"] # we have 4 elements on left side to update
# but we are providing only one value on right.
# first element get updated and rest of the values get removed from the array.
p fruits  # important feature

# length method
p fruits.length()  # total elements in Array
# even nil is counted as an array element.
p fruits.size() # same as length (faster)

# count method
p fruits.count() # same as length or size
# count method can be used to find the count of a particular element in Array.

p fruits
p fruits.count(nil) # find the count of nil element in array.

# empty? and nil? method on Array
p fruits.empty?() # false as array is not empty.
p fruits.nil?()


letters = ("a".."j").to_a  # to_a -> to array
p letters
character = letters[5]
varchar = letters[40]
p character.nil?()  # false
p varchar.nil?()  # true

# first and last method on array.
arr = [1,2,3,5,6,7,8]
p arr.first()  # integer class 1
p arr.first(1) # array class [1]
p arr.last()

p arr.first(2)  # give me first 2 elements as Array
p arr.last(3) # give me last 3 elements as Array.


def custom_first(arr, num = 0)
  return arr[0] if(num == 0)
  return arr[0, num]
end


def custom_last(arr, num = 0)
  return arr[-1] if(num == 0)
  return arr[-num..-1]
end


# push method, the shovel operator, and the .insert method
locations = ["House", "Airport", "Bar"]
p locations
p locations.size()

locations.push("School")  # push adds element at last.
p locations

locations.push("Restaurant", "Railway Station") # adding multiple elements
p locations

locations << "Library" # adds at last
p locations

# insert method
locations.insert(1, "Saloon")
p locations
# first argument = index position
# second argument = element you want to insert.
locations.insert(1, "Park", "Market")
p locations
# park will be allocated to index 1 and other elements will follow.

# pop() method

locations.pop()  # removes last elements from array.
p locations
# pop also returns the last element before popping
last_element = locations.pop()
p locations
p last_element

last_two_element = locations.pop(2)  # remove 2 elements and return them as Array.
# it is not neccessary to store before popping out. its our choice..
p last_two_element


# .shift and .unshift method

arr = [1,2,3,4,5,6,7,8]
p arr

extract = arr.shift()
p arr  # [2, 3, 4, 5, 6, 7, 8] array is shift to right
p extract # 1 integer

extract = arr.shift(1)
p arr  # [3, 4, 5, 6, 7, 8]
p extract # Array.

arr.unshift(19)  # 19 is added at the begining.
p arr

# equality and inequality operator on Array
a = [1,2,3]
b = [1,2,3,4]
c = [3,2,1]
d = [1,2,3]
p a == d  # true

p a == c.reverse()  # true
p a != b  # true

# the spaceship operator  <=>

p 5 <=> 5 # 0 if both sides are equal.
p 10 <=> 5 # 1 if left side is greater
p 12 <=> 24  # -1 if right side is greater
p 5 <=> [1,2,3] # nil if values are not comparable

# convert range object to array object

letter_range = "A".."T"

p letter_range
letter_array =  letter_range.to_a()
p letter_array

numbers_range = 415..450
p numbers_range
numbers_array = numbers_range.to_a()

p numbers_array

# is_a? predicate method
p 1.class  # integer

puts 1.is_a?(Integer)  # true

puts [1,2,3].is_a?(Array)  # true
puts [1,2].is_a?(Object)  # true
