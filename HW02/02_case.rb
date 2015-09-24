puts "Enter a number for day from 1 to 7"
day_number = gets.to_i
puts case day_number
  when 1 then "Monday"
  when 2 then "Tuesday"
  when 3 then "Wednesday"
  when 4 then "Thursday"
  when 5 then "Friday"
  when 6 then "Saturday"
  when 7 then "Sunday"
  else "Enter correct number"
  end

