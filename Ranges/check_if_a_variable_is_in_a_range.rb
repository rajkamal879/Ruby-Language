half_alphabet = "a"..."m"

puts half_alphabet.include?("m") # false


numbers = 10..100

puts numbers.include?(89) # true
# alternate method to include? is
p numbers === 89  #true
