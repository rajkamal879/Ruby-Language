# split method
sentence = "Hi, my name is Raj. There are spaces here!"
p sentence

p sentence.split() # get splited on spaces
words = sentence.split()
p words.length()
p sentence.split(".") # get splited on "."

def longest_word(sentence)
  longest_length = 0
  longest = ""
  words = sentence.split()
  words.each do |word|
    if(word.length() >= longest_length)
      longest_length = word.length()
      longest = word
    end
  end
  longest
end

# iterate over string characters
"Hello World".each_char {|char| p char}
# alternate method for this
p "Hello World".split("") # get splited on every characters
# array of characters will be returned.

p "Hello World".split("") # way 1
p "Hello World".chars() # way 2
# both are same way.

letters = "Hello World".chars
p letters.class  # array class

# join method

names = ["Joe", "Moe", "Bob"]
p names.join()  # JoeMoeBob
# if we dont give any arg it is "" by default.
p names.join("-") # Joe-Moe-Bob

# count method on string
puts "Hello World".count("We") # gives the count of passed arg in the string
 # prints 2

# custom count method on string
def custom_count(string, search_characters)
  count = 0
  string.each_char do |c|
    if(search_characters.include?(c))
      count += 1
    end
  end
  return count
end

p custom_count("Hello World", "He")

# index method and rindex method
fact = "I am very handsome."
p fact.index("am") # 2 index position at which "am" is present in string.
# gives the index position from the begining.


p fact.index("e", 7)
# gives the index position of "e" in string.
# lookup starts from the index 7. Searching starts from the index 7.

# rindex method
p fact.rindex("e")  # lookup starts from the right/reverse.

def custom_index(string, substring)
  return nill unless string.include?(substring)
  length = substring.length()
  string.chars.each_with_index do |char, idx|
    sequence = string[idx, length]
    return idx if(sequence == substring)
  end
end

# insert method in string
typo = "GeorgWashington"
typo.insert(5, "e")  # original string is modified.
# first arg = index position to insert
# second arg = string to index.
p typo

# squeeze method
# removes the dublicate chars in a row.
sentence = "Thhhe aardvark jummped   ovver the fence!"
puts sentence
puts sentence.squeeze() # original string is not modified
puts sentence
# bang method is available for squueze method.

def custom_squeeze(string)
  final  = ""
  #chars = string.chars
  chars = string.split("")
  chars.each_with_index do |ch, index|
    (ch == chars[index+1]) ? next : final << ch  # using ternary operator.
  end
  final
end

puts custom_squeeze("ttthis iiis     bboy")
 # clear method
p "Blah Blah".clear  # empty string
# string get mutated.
# clear method converts a string into empty string.

# delete method

puts "Hello World".delete("l")
# deletes all occurences of l.
# case sensitivity matters.
# if passed arg is not present, simply leaves the string as it is.
