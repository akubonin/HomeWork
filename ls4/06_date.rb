puts "Enter the day number"
day = gets.to_i
puts "Enter the month number"
month = gets.to_i
puts "Enter the year number"
year = gets.to_i



days_in_month = [0,31,28,31,30,31,30,31,31,30,31,30,31]
days_in_month_leap = [0,31,29,31,30,31,30,31,31,30,31,30,31]

date_number = 0
i = 0

if year%4 == 0
  puts "Это високосный год"
    while i < month
    date_number += days_in_month_leap[i]
    i += 1
  end
  puts "Date number is #{date_number+day}"
else while i < month
    date_number += days_in_month[i]
    i += 1
  end
  puts "Date number is #{date_number+day}"
end



