 puts "Hello"

 name = gets
 puts name

 name = gets.chomp  # ignore the enter from the string
 puts name

 # gets method takes everything as string objects
 # so in case string input it was okk
 #but in case of int input, we need to type cast from string to int.
 age = gets.chomp.to_i  # taking input in age and then typecasting it into int.
