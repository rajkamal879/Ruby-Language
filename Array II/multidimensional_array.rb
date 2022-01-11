users = [["Bob", 25, "Male"], ["Larry", 22, "Female"], ["Raj",22,"Male"]]


p users[0]
p users[1]

p users[0][0] # Bob.

candidate1, candidate2, candidate3 = users

p candidate1
p candidate2
p candidate3


# partion method
foods = ["Steak", "Vegetables", "Steak Burger", "Kale", "Tofu", "Tuna Steaks"]

good = foods.select{|food| food.include?("Steak")}
bad = foods.reject{|food| food.include?("Steak")}
p good
p bad
# alternate method
p foods.partition{|food| food.include?("Steak")} # returns 2 array based on partition.
good, bad = foods.partition{|food| food.include?("Steak")}

p good
p bad

def evens_and_odds(array)
  array.partition{|el| el.odd?()}
end
arr = [4,8,15,16,23,42]
p evens_and_odds(arr)
