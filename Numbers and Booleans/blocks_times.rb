# times method
3.times {puts "raj is awesome!"} # for one line

10.times {|count| puts "Hello World number #{count}"}

10.times do
  # block starts here
  puts "raj is awesome!"
  puts "loving ruby!"
  # used in case block has multiple lines
  # block ends here
end


# block variable
3.times do |i|
  puts "we are currently on the iteration no #{i}"
end
# i starts from 0 and increased by 1 each time automatically.


# table of 3 function
def printTableOf3
  10.times {|i| puts 3*(i+1)}
end
printTableOf3() # calling function
