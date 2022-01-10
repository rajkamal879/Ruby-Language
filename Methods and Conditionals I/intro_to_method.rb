def introduce_myself
  # body of method starts here
  puts "My name is Raj Kamal"
  puts "I live in varanasi"
  # body of method ends here
end

introduce_myself() # function/method calling/invoking
introduce_myself()

# calling function 5 times
5.times {introduce_myself}

# error will be introduced if we invoke the function befre its definition.
