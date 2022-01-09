5.downto(1) {|i| puts "countdown: #{i}"}
# i is local variable of above block.

5.downto(0) do |current_number|
  puts "we are currently on #{current_number}"
  puts "congrats"
end

# similarly upto
5.upto(10) {|i| puts "countup: #{i}"}

5.upto(10) do |count|
  puts "hello"
  puts "world"
  puts count
end
