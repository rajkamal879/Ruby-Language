grade = "X"
if(grade == "A")
  puts "exellent"
elsif(grade == "B")
  puts "very good"
elsif(grade == "C")
  puts "good"
else
  puts "you failed"
end

# odd or even method

def oddOrEven(number)
  if(number.odd? == true)
    return "This is odd"
  else
    return "This is even"
  end
end

puts oddOrEven(5)
