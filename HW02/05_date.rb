puts "Enter the day number"
day = gets.to_i
puts "Enter the month number"
month = gets.to_i
puts "Enter the year number"
year = gets.to_i

if year%4 == 0
  puts "Это високосный год"
  leap = 1
else leap = 0
end

puts case month
  when 1 then "Date number is #{day}"
  when 2 then "Date number is #{31+day}"
  when 3 then "Date number is #{31+28+day+leap}"
  when 4 then "Date number is #{31+28+31+day+leap}"
  when 5 then "Date number is #{31+28+31+30+day+leap}"
  when 6 then "Date number is #{31+28+31+30+31+day+leap}"
  when 7 then "Date number is #{31+28+31+30+31+30+day+leap}"
  when 8 then "Date number is #{31+28+31+30+31+30+31+day+leap}"
  when 9 then "Date number is #{31+28+31+30+31+30+31+31+day+leap}"
  when 10 then "Date number is #{31+28+31+30+31+30+31+31+30+day+leap}"
  when 11 then "Date number is #{31+28+31+30+31+30+31+31+30+31+day+leap}"
  when 12 then "Date number is #{31+28+31+30+31+30+31+31+30+31+30+day+leap}"
else "Give the correct month number"
end

