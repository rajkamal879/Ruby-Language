story = "once upon a time"
p story[0,4]
p story.length()
# to get entire string we can do
p story[0, story.length()]
p story.slice(0, story.length())
# first argument - starting pos
# second argument - number of character

# to extract character in some range
p story[2..7] # range [2,7] both are inclusive
p story.slice(2..7)

p story[2...7] # range [2,7), 7 is exclusive
p story.slice(2...7)

p story[0..230] # if range exceeds the length of starting
# it prints the entire string.

str = "rajkamalisawesome"
p str.size()
p str[12..-4] # starting from the 12th char and going till 4th char from the end..
