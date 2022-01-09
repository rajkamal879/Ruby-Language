first_name = "Harry"
last_name = "Potter"

p first_name << last_name # prints HarryPotter
# here << is called shovel operator
p first_name << last_name << "Congratulations" # statement 1
p first_name + last_name + "Congratulations" # statement 2
# statement 1 and 2 are same.
# any number of string can be there.

p first_name + last_name

first_name += last_name # allowed

first_name.concat(last_name) # concatenate method
# in concatenation last_name appears after first_name.
puts first_name

first_name.prepend(last_name)
# in prepend last_name appears before first_name.
