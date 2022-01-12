# variables and objects

# All the ruby objects live on the heap
# Ruby creates space for each object on the heap.
# An object returns a reference to its memory address when it is created.
# Variables do not hold the object; they hold the reference to the object.
# if the object is the house, the variable is the address.

# pointers to the same object.

# if a variable is assigned to another variable.
# The variable becomes an alias for the object.
# Thus, any modification to the object will be reflected in both the variable.
# The object_id method returns an object's location in memory.

a = [1,2,3]
b = [1,2,3]
# both are different object.
p a 
p b
p a.object_id() # address of object a
p b.object_id() # address of object b
p a.object_id == b.object_id  # false

x = [12,24,36]
y = x
# x and y are pointing to same object
# any modification to x will be reflected in y.

# we want to assign y an object as same as x but it should be different object.
# for that we need to use dup method
z = y.dup()
p z
p z.object_id()
p y.object_id()
# y and z are different object but identical in structure.
# modifications in y will not be reflected in z.

# splat argument
def sum(*numbers)
	sum = 0
	# default data type/ class would be Array here.
	numbers.each {|num| sum += num}
	sum
end

p sum(2,3,4,5,6,7,8) # any number of argument can be there.
# it will work perfectly fine.

# .any? and .all? predicate method
# if any(atleast one)ele in array satisfies the condition given in the block
# it returns true, otherwise false.
p [1,2,3,4,5].any? do |number|
	number.even?()
end

# if all the ele in array satisfies the given condition.
# it will return true, otherwise false.
p [1,2,3].all? do |number|
	number.class == Integer
end

# find and detect method 

words = ["dictionary", "refrigerator", "platypus", "microwave"]

p words.select{|word| word.length() > 8}
# it selects all the elements which meet the given condition.
# however if we want to find the first ele which meet the condition
# then find method would be useful.
p words.find {|word| word.length() > 8} # dictionary 
# detect method works same as find method.
p words.detect {|word| word.length() > 8} # dictionary

lottery = [4,8,15,16,23,42]
result = lottery.detect{|num| num.odd?()}
p result  # 15

# .uniq method
numbers = [1,1,2,2,2,3,3,4,4,4,4,4]
p numbers.uniq()  # [1,2,3,4]
p numbers # original array is not modified
# bang method is available, which modifies the original array.


def custom_uniq(array)
	final = []
	array.each{|num| final << num unless(final.include?(num))}
	final
end

p custom_uniq([1,1,2,2,2,])

# compact method on array
# removes all the nil object from the array
puts [1,2,3].compact() # no change as it does not contain any nil object.

p [].compact() # []
p [nil, nil].compact() # [] empty array
# compact does not modified the orginal array
# bang method is available.

# inject and reduce method on array
# let say we have to find the sum of the array element.

result = [10,20,30,40].reduce(0) do |previous, current|
	puts "The previous value is #{previous}"
	puts "The current value is #{current}"

	previous = previous + current
	previous  # previous is finally returned.
end
# previous will be set to arg value passed by us.
# current value is array element one by one.
# inject works in same way as reduce method.
p result

# flatten method
registrations = [
	["Bob", "Dan", "Jack"],
	["Rick", "Susan", "Molly"],
	["Pierce", "Sean", "George"]
]

# flatten method will convert it into one dimentional array.
# no matter how many nesting has been done(2D,3D)
p registrations.flatten()  # 1D array
# original array is not modified.
# bang method is available..

# zip method
names = ["Bo", "Moe", "Joe"]
registration = [true, false, false]
ages = [22,23,34]
p names.zip(registration)
p names.zip(registration, ages)
# elements at same index get clubbed.
# number of argument can be greater than 1.

# sample method
flavors = ["Chocolate", "Vanilla", "Strawberry", "Rum Raisin"]
puts flavors.sample # random element from the array
puts
puts flavors.sample(2) # 2 random element from the array.


# multiply an array with asterisk 
puts 4*3 #12
puts "Ruby" * 3  # RubyRubyRuby
p [1,2,3]*3  # [1, 2, 3, 1, 2, 3, 1, 2, 3]


# union method
p [1,2,3,3] | [3,4,4,5] # union of both the array.
p [1,2,2,3] | [4,4,5] | [5,6,7]
p [1,2,3].|([3,4,5]) # how it works internally

def custom_union(arr1, arr2)
	arr1.dup.concat(arr2).uniq()
end
p custom_union([1,2,2,3],[3,3,4])

# suppose we want to remove particular elements from the array

arr = [1,1,2,2,2,3,3,4,5]
# let say we have to remove all the occurences of 2 and 3 from the array.
arr = arr - [2,3] # as it was not modifying the original array hence we had to update the original array.
p arr

# array intersection using % symbol

p [1,1,2,3,4,5] & [1,2,5,8,9]  # intersection [1,2,5]





