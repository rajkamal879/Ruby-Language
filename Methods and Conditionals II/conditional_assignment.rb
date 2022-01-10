y = nil
p y

y ||= 5 # 5 will be assigned to y only if y is previously nill
# as y is set to nil, 5 will be assigned to y.
p y

y ||= 10 # here in this y is set to 5 and is not nil
# hence 10 will not be assigned to y. y is still 5.
p y


greeting = "Hello"
extraction = 100
letter = greeting[extraction]
# letter will be nil here as 100th index is not accessible.
p letter

letter ||= "Not found"
p letter
