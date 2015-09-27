puts "Enter number of students"
group_size = gets.chomp.to_i

arr = []

for i in (1..group_size)
  puts "Введите оценка для студента #{i}"
  arr << gets.chomp.to_i
end

puts "Массив #{arr}"

sum = 0
j = 0
arr.each do
  sum += arr[j]
  j += 1
end

puts "Cредняя оценка #{sum/arr.size.to_f}"

