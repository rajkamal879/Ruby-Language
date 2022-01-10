def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce! Thats delicious!"
  when "Sushi"
    "Great choice! My favourite food!"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling! The perfect combination"
  when "Tofu", "Brussel Sprouts"
    "Disgusting! Yuck!"
  else
    "I dont know about the food!"
  end
end


puts rate_my_food("Tofu")


def calculate_grade(grade)
  case grade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end

p calculate_grade(95)

# another way to write the above function.

def calculate_grade1(grade)
  case grade
  when 90..100 then "A"
  when 80..89 then "B"
  when 70..79 then "C"
  when 60..69 then "D"
  else "F"
  end
end
p calculate_grade1(80)
