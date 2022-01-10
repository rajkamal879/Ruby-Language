# way 1
number = 5000
verified = true
if(number > 2500 || verified)
  puts "Huge number!"
end


# way 2
puts "Huge number!" if(number > 2500 || verified)



# way 1
x = 8
unless (x > 10)
  puts "x is Not greater than 10"
end

# way 2
puts "x is Not greater than 10" unless x > 10
