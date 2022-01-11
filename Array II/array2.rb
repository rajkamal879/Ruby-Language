# ri program
# go in terminal and write ri name_of_class and enter
# we will have documentation of that class.

# review of blocks
# times method
3.times {|count| puts count}
# count has current iteration # starting from 0
3.times {puts "Hello there!"}

4.times do |i|
  square = i*i
  puts square
end
# i is local variable and its scope is within the block itself.

# each method in Array
# used to iterate on every element of array in order.
candies = ["Sour Patch Kids", "Milky Way", "Airheads"]

candies.each do |candy|
  # candy variable has the element of array.
  puts candy
end

candies.each {|candy| puts candy}

# each within each

shirts = ["striped", "plain shirt", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
  ties.each do |tie|
    puts "Option : A #{shirt} shirt and a #{tie} tie !"
  end
end


# for loop
numbers = [3,5,7]
numbers.each {|num| puts num}
# num here is block variable..

for x in numbers
  puts x
end
# important important.
p x  # x is accessible here.  unique thing..

rng = 1..10
rng.each do |r|
  puts r
end
# puts r  # r is not accessible here. r is block variable here.


# each method with index.
colors = ["Red", "Blue", "Green", "Yellow"]
colors.each do |color|
  puts color
end

colors.each_with_index do |col, idx|
  puts "#{col} is at index number #{idx}"
end

# .map and .collect method on Array
numbers = [1,2,3,4,5]
squares = []
numbers.each {|number| squares << number ** 2}
p squares

numbers2 = [10,20,30]
squares2 = numbers2.map {|num|  num **2}
p squares2
# collect works in the same way.

fahr_temperature = [105,73,40,18]

celcius_temperature = fahr_temperature.map do |temp|
  minus32 = temp-32
  minus32 * (5.0/9.0)  # last statement will be returned and mapped to new arrayt.
end

p celcius_temperature

results = [1,2,3].map {|num| puts num**2}
p results  # nil,nil, nil as puts returns nil.

results = [1,2,3].map {|num| num**2}
p results  # [1,4,9]

def cubes(arr)
  arr.map {|num| num ** 3}
  # will return new array
end

p cubes([1,2,3])

# iteration using while loop
arr = [1,2,3,4,5,6,7]
i = 0
while(i < arr.size())
  puts "#{i} : #{arr[i]}"
  i+=1
end

# iteration using until method
i  = 0
until (i >= arr.length())
  puts "#{i} : #{arr[i]}"
  i += 1
end

# break keyword # important..
arr = [1,3,4,5,6,433,41,765]
def linear_search(arr, target)
  i = 0
  while(i < arr.length())
    if(arr[i] == target)
      puts "found target element!"
      break
    end
    i += 1
  end

end

linear_search(arr, 6)

# next keyword # like continue keyword in c++.
numbers = [1,2,3, "Hello", 5,6, nil, []]
numbers.each do |num|
  if (num.is_a?(Integer) == true)
    puts "square of this number is #{num**2}"
  else
    next  # continue to next iteration.
  end
end

# reverse method
arr = ["a", "b", "c"]
p arr
p arr.reverse
p arr  # orginal array is not modified.
arr.reverse!  # applied reverse bang method
# original array is modified.

# sort method
numbers = [2,1,4,-1,45,7]
words = ["Hello", "world", "Kiara", "Shahid"]

p numbers.sort() # array sorted
p numbers # original array is not modified

numbers.sort!()  # sort bang method
p numbers

p words.sort()
p words.sort().reverse()

# concatenate method
p [1,2,3] + [4,5]
num1 = [10,20,30]
num2 = [40,50]
num1.concat(num2)  # num1 gets modified.
p num1
p num2

def custom_concat(arr1, arr2)
  arr2.each {|el| arr1 << el}
  arr1
end

p custom_concat([1,2,3],[3,2,1])

# max and min method on array
stock_prices = [122,44,23,3454]
p stock_prices.max()
p stock_prices.min()
# max and min works for string array as well.

# include? predicate method on array
p "Hello".include?("H")  # true

numbers = [1,2,3,4]
p numbers.include?(3) # true.

# index method and find_index method
colors = ["Red", "Blue", "Green", "Red"]
p colors.index("Green") # tell me the index of the ele passed

p colors.find_index("Green") # same as index method
# if the passed el is not present in array -> nil will be returned.

# select method
grades = [80,90,56,76,45]

matches = grades.select do |number|
  # only those element of array are selected for
  # which is condition is true.
  # boolean expression should be written.
  number >= 75 # if number is greater than 75, it get selected.
end
p matches

evens = grades.select {|num| num.even?()}
p evens

words = ["level", "Selfless", "racecar", "dinosaur"]

palindromes = words.select {|word| word == word.reverse}
p palindromes

# reject method
# it rejects the elements of array for which condition is true.
