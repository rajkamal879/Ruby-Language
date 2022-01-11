puts "Hello World"
puts 'Hello World'

puts "Hello there, I am 'Raj' and live in BSB" # no issue
puts 'Hello there, I am "Raj" and live in BSB' # no issue

# problem arises when
# puts "Hello there, I am "Raj" and live in BSB" # error
# puts 'Hello there, I am 'Raj' and live in BSB' # error
# error when we use same kind of quote.

# to avoid this kind of error
puts "Hello there, I am \"Raj\" and live in BSB"
# using \ will ignore the next upcoming special char.
# similarly
puts 'Hello there, I am \'Raj\' and live in BSB'

# line break using (\n)
puts "Lets add a line break\nright here!"
result = "Lets add a line break\nright here!"
puts result # line actually gets broken
p result # shows /n as it is.

# tab (\t)
puts "\tLets put a tab here!"
