1.step(10,2) {|i| puts i}
# first argument: upper limit(upto which you want to go)
# second argument: size of step you want to take.
puts
0.step(10,3) do |count|
  puts count
end

# if the second argument is not given, means step size is 1.
