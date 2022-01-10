nums = 1..5  # range [1,5]
p nums
puts nums
print nums

puts

p nums.class
puts nums.class
print nums.class

puts

p nums.first # first element of the range.
p nums.last  # last element of the range.

p nums.first(4) # first 4 elements of the range
p nums.last(3) # last 3 elements of the range

nums2 = 1...5 # range [1,5) 5 is not included.

p nums2
p nums2.first
p nums2.last # bug, even if 5 is not included,last is giving 5.

# puts 1..10.first(3)   # error basically first is being called
# on int 10 here.
puts (1..10).first(3)
