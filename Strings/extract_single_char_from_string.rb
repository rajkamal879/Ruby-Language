story = "once upon a time"
p story.length

# extracting char from string
p story[0]  # o (class is string, not char)
p story[1]

p story[-1] # last character
p story[-2] # second last character.

p story[100] # nil --> something does not exist.

# alternative method of using [] is .slice method
p story.slice(0) # o
