def meal_plan(time_of_week, time_of_day)
  if(time_of_week != "weekend")
    if(time_of_day == "breakfast")
      "Cereals"
    elsif(time_of_day == "lunch")
      "Rice & Dal"
    else
      "Roti & Sabji"
    end
  else
    if(time_of_day == "breakfast")
      "Poha & Jalebi"
    elsif(time_of_day == "lunch")
      "Kofta & Roti"
    else
      "Aloo paratha"
    end
  end
end

puts meal_plan("weekend", "lunch")
